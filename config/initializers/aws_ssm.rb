require 'aws-sdk-ssm'

private

def config_aws
    ssm_client = nil
	vcap_services = JSON.parse(ENV['VCAP_SERVICES'])

	vcap_services['user-provided'].each do |user_service|
		if user_service['credentials']['aws_access_key_id'].present?
			ssm_client = Aws::SSM::Client.new(
				region: user_service['credentials']['region'],
				access_key_id: user_service['credentials']['aws_access_key_id'],
				secret_access_key: user_service['credentials']['aws_secret_access_key']
			)
		end
	end

    # To use VCAP Services user-provided credentials in CF/GpaaS, simply uncomment the next line by removing the `#` at the begining o the line:
    # ssm_client = ssm_use_vcap_services

    return initialize_env_vars(ssm_client) if ssm_client

    Rails.logger.info('Failed to create to AWS SSM Client')
end

def initialize_env_vars(ssm_client)
    params_list = []

    begin
        query_results = query_ssm(ssm_client)
        params_list = query_results[:parameters]

        while query_results[:parameters].count >= 50
            next_token = query_results[:next_token]
            query_results = query_ssm(ssm_client, next_token)
            query_results[:parameters].each { |param| params_list << param }			
        end

        params_list.each do |param| params_list.any?
            next unless param[:name].to_s.downcase.include?('identifier-service')

            # Here we are getting AWS Key/Value pair and assign to environment variables, one by one.
            # E.g. ENV['PARAMTER'] = 'ABC1234...'
            param_val = ssm_client.get_parameter({ name: param[:name], with_decryption: true })[:parameter][:value].to_s
            param_name = param[:name].split('/')[param[:name].split('/').count - 1].to_s
            ENV[param_name] = param_val

            rescue StandardError => e
                puts "ERROR: #{e}"
        end
    end
end

def query_ssm(ssm_client, next_token = nil)
    ssm_client.describe_parameters({
        max_results: 50, # Cannot go any higher, so we loop through until we get everything, above.
        next_token: next_token
    })
end

config_aws if ENV['SERVER_ENV_NAME'].present?

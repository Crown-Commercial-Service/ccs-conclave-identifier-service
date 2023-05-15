require 'aws-sdk-ssm'

private

def config_aws
		ssm_client = Aws::SSM::Client.new(
			region: user_service['credentials']['region'],
			access_key_id: user_service['credentials']['aws_access_key_id'],
			secret_access_key: user_service['credentials']['aws_secret_access_key'])
		params_list = fetch_params_list(ssm_client)
		set_env(ssm_client, params_list) if ssm_client && params_list.any?
end

# Remove # from line below to use VCAP services in CF/GpaaS
# ssm_client = initialize_ssm_client

def fetch_params_list(ssm_client)
	next_token = nil
	params_list = []
	  
	begin
	  loop do
		response = ssm_client.describe_parameters({ max_results: 50, next_token: next_token })
		params_list += response.parameters.map(&:name)
		next_token = response.next_token
		break if next_token.nil?
	  end
	rescue Aws::SSM::Errors::ServiceError => e
	  # Handle the error, e.g., log it or raise a custom exception
end

def set_env(ssm_client, params_list)
	params_list.each do |param_name|
		response = ssm_client.get_parameter({ name: param_name, with_decryption: true})
		ENV[param_name] = response.parameter.value
	end
end

# The following line means that AWS SSM Parameter Store will not be used locally, due to the conditional. You should use a `.env.local` file (do not push) to hold secrets stored in AWS, for local use.
config_aws if ENV['SERVER_ENV_NAME'].present?



# Disabled by default Set AWS SSM Client to get credentials from VCAP sefices in CF/GpaaS
  def initialize_ssm_client
	vcap_services = JSON.parse(ENV['VCAP_SERVICES'])
  
	vcap_services['user-provided'].each do |user_service|
	  if user_service['credentials']['aws_access_key_id'].present?
		ssm_client = Aws::SSM::Client.new(
		  region: user_service['credentials']['region'],
		  access_key_id: user_service['credentials']['aws_access_key_id'],
		  secret_access_key: user_service['credentials']['aws_secret_access_key']
		)
	  end
	end ssm_client

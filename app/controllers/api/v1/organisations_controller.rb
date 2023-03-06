module Api
    module V1
        class OrganisationsController < ApplicationController
            def index 
                organisations = Organisation.order('id ASC');
                render json: {status: 'SUCCESS', message: 'Loaded Organisations', data:organisations}, status: :ok   
            end

            def show
                organisation = Organisation.find(params[:id])
                render json: {status: 'SUCCESS', message: 'Loaded Organisations', data:organisation}, status: :ok
            end

            def create 
                organisation = Organisation.new(PPON_ID: generate_specific_ppon_id(Organisation.count+1))
                if organisation.save
                    render json: organisation.PPON_ID, status: :ok
                    organisation.save
                else
                    render json: {status: 'ERROR', message: 'Organisation not saved', data:organisation.errors}, status: :unprocessable_entity
                end
            end
            

            private

            def organisation_params
                params.permit(:id)
            end

            def generate_specific_ppon_id(index)
                result = %x(python3 ppon_id_script.py #{index} 2>&1)
                puts "Generating PPON ID, at index: #{index}:  #{result}"
                return result.to_s
            end
        end
    end 
end
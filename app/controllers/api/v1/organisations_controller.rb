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
                organisation = Organisation.new(organisation_params)

                if organisation.save
                    random_string = SecureRandom.alphanumeric(8).upcase
                    organisation.update(PPON_ID: random_string)
                    render json: organisation.PPON_ID, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Organisation not saved', data:organisation.errors}, status: :unprocessable_entity
                end
            end
            

            private

            def organisation_params
                params.permit(:id)
            end
        end
    end 
end
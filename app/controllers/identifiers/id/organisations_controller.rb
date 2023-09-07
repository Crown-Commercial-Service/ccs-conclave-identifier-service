module Identifiers
  module Id
    class OrganisationsController < ApplicationController
      include Authorize::Token
      before_action :validate_api_key

      def create
        organisation = Organisation.new(ppon_id: generate_specific_ppon_id(Organisation.count + 1))
        if organisation.save
          render json: {
            identifiers: [
              {
              "id": organisation.ppon_id,
              "id-type": "ppon-id",
              "persisted": true
              }
            ]
            }, status: :created
        else
          render json: { status: 'ERROR', message: 'Organisation not saved', data: organisation.errors }, status: :unprocessable_entity
          Rollbar.error('ERROR: Organisation not saved')
        end
      end
      private

      def organisation_params
        params.permit(:id)
      end

      def generate_specific_ppon_id(index)
        result = `python3 ppon_id_script.py #{index} 2>&1`
        Rails.logger.debug { "Generating PPON ID, at index: #{index}:  #{result}" }
        result.to_s
      end
    end
  end
end

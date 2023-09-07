class ApplicationController < ActionController::API
    def not_found
        render json:
        [ identifiers:
            [
                {
                    "id": "string",
                    "id-type": "string",
                    "persisted": "string"
                }
            ], 
            "description": "The resource you were looking for could not be found."
        ], status: :not_found
        Rollbar.error('Not Found: The resource you were looking for could not be found.')
    end
end

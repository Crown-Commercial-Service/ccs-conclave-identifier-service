module Testing
  class TestingController < ActionController::API

    def return_first_ppon_id # AA1111AA1
      #render json: { "PPON_ID": Helpers::ApplicationHelper.generate_specific_ppon_id(0) }, status: :ok
    end

    def return_second_ppon_id # AA1111AA2
      #render json: { "PPON_ID": Helpers::ApplicationHelper.generate_specific_ppon_id(1) }, status: :ok
    end

    def return_third_ppon_id # AA1111AA3
      #render json: { "PPON_ID": Helpers::ApplicationHelper.generate_specific_ppon_id(2) }, status: :ok
    end
    
    def return_specific_ppon_id
      #index = params[:index]
      #render json: { "PPON_ID": Helpers::ApplicationHelper.generate_specific_ppon_id(index) }, status: :ok
    end
  end
end

class SessionsController < Devise::SessionsController
    include ActionController::Helpers
    include ActionController::Flash
    
    respond_to :json

    private

    def respond_with(resource, _opts = {})
        render json: resource
    end

    def respond_to_on_destroy
        head :no_content
    end

end

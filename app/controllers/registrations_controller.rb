class RegistrationsController < Devise::RegistrationsController
    respond_to json:

    def create
        build_resource(sign_up_params)
        if resource.save
            RegistrationMailer.with(user: @user).new_registration_email.deliver
        render json: resource, status: :created
        end
        
    end
end

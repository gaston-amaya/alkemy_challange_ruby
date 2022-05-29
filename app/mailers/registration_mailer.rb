class RegistrationMailer < ApplicationMailer
    def new_registration_email
        @user = params[:user]
        mail(to: @user.email, subject: "Welcome to the alkemy world!")
    end
end

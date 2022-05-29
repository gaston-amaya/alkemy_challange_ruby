# Preview all emails at http://localhost:3000/rails/mailers/register_mailer
class RegistrationMailerPreview < ActionMailer::Preview
    def new_registration_email
        @user = User.new(email: "gaston@email.com", password: "123456")

        RegistrationMailer.with(user: @user).new_registration_email
    end

        

end

class RegistrationsController < Devise::RegistrationsController
	def create
		super
		if @user.save
			to_email = @user.email
			SignupMailer.signup_confirmation(to_email).deliver_now
		end
	end

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :avatar, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :avatar, :email, :password, :password_confirmation, :current_password)
  end
end
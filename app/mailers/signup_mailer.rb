class SignupMailer < ApplicationMailer
	default :from => 'localhst.tour@gmail.com'
	def signup_confirmation(to_email)
		@to_email = to_email
		mail(to: @to_email, subject: "Localhst Signup")
	end
end

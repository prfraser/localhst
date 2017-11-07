class SignupMailer < ApplicationMailer
	def signup_confirmation(to_email)
		@to_email = to_email
		mail(to: @to_email, subject: "Localhst Signup")
	end
end

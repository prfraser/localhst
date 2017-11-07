class TipMailer < ApplicationMailer
	def tip_confirmation(to_email, amount, title)
		@to_email = to_email
		@amount = amount
		@title = title
		mail(to: @to_email, subject: "Tip Recieved")
	end
end

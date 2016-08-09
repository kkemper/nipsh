class PasswordResetMailer < ApplicationMailer
	def reset_email(user)
		@user = user
		mail(to: @user.email, subject: 'Password Reset Instructions')
	end
end
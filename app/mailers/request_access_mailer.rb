class RequestAccessMailer < ApplicationMailer
	def request_access_email(user)
		@user = user
		mail to: "cgkemper@gmail.com", subject: 'User Request: @user.name'
	end
end

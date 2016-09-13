class UserRequestsController < ApplicationController
	def new
	end

	def create
		@user = User.find_by_email(params[:email])
		if @user
			@user.deliver_approval_request!
			flash[:success] = "Your request has been received.  Please allow five business days for approval."

end



class UserRequestsController < ApplicationController
	def new
	end

	def create
		@user = User.find_by_email(params[:email])
		if @user
			@user.deliver_approval_request!
			flash[:success]

end



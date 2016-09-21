class RequestAccessesController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(request_access_params)
  	if @user.save
  		@user.deliver_access_request!
  		flash[:success] = "Your request has been sent. Please allow 5 business days for approval."
  		redirect_to_root_path
  	else
  		render :create
  	end
  end

  def index
    @request_accesses = RequestAccess.all
  end

 #  def update
 #  	@user = User.find_by(perishable_token: params[:id])
 #  	if @user.update_attribute(approved = true)
 #  		flash[:success] = @user.name " has been approved for access."
 #  		redirect_to_root_path
 #  	else
 #  		render :new
 #  	end
 #  end

	# def deny
 #  	@user = User.find_by(perishable_token: params[:id])
 #  	if @user.update_attribute(approved = false)
 #  		flash[:success] = @user.name " has been denied access."
 #  		redirect_to_root_path
 #  	else
 #  		render :new
 #  	end
 #  end



  private

  def request_access_params
  	params.require(:user).permit(:email, :name, :organization, :research_synopsis)
  end
end

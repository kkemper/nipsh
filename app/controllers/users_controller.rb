class UsersController < ApplicationController
  def new
  	@user = User.new
  end
def create
  @user = User.new(users_params)
    if @user.save
      @user.deliver_access_request!
      flash[:success] = "Your request has been sent. Please allow 5 business days for approval."
      redirect_to_root_path
    else
      render :new
    end
  end
  # def create
  # 	@user = User.new(users_params)
  # 	if @user.save
  # 		flash[:success] = "Account Created"
  # 		redirect_to_root_path
  # 	else
  # 		render :new
  # 	end
  # end

  private

  def users_params
  	params.require(:user).permit(:email, :password, :password_confirmation, :research_synopsis, :name, :organization)
  end
end

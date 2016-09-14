class AccessApprovalsController < ApplicationController
  def edit
    user = User.find_by(email: params[:email])
    if user && !user.approved?
      user.update_attribute(:approved, true)
      user.update_attribute(:approved_at, Time.zone.now)
      flash[:success] = "Account approved!"
      redirect_to root_url
    else
      flash[:danger] = "Invalid approval link"
      redirect_to root_url
    end
  end
end

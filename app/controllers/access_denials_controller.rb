class AccessDenialsController < ApplicationController
  def edit
    user = User.find_by(email: params[:email])
    if user && !user.approved?
      user.update_attribute(:approved, false)
      user.update_attribute(:denial_at, Time.zone.now)
      flash[:success] = "Account denied"
      redirect_to root_url
    else
      flash[:danger] = "Invalid denial link"
      redirect_to root_url
    end
  end
end

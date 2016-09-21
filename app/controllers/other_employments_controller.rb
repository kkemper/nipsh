class OtherEmploymentsController < ApplicationController
  def new
  end

  def index
    @other_employments = OtherEmployment.all
  end
end

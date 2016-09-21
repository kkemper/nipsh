class CancerScreeningsController < ApplicationController
  def new
  end

  def index
    @cancer_screenings = CancerScreening.all
  end
end

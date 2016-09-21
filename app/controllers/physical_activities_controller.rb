class PhysicalActivitiesController < ApplicationController
  def new
  end

  def index
    @physical_activities = PhysicalActivity.all
  end
end

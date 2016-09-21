class HealthConditionsController < ApplicationController
  def new
  end

  def index
    @health_conditions = HealthCondition.all
  end
end

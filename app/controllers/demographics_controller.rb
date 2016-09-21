class DemographicsController < ApplicationController
  def new
  end

  def index
    @demographics = Demographic.all
  end
  
end

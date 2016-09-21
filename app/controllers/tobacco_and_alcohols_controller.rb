class TobaccoAndAlcoholsController < ApplicationController
  def new
  end

  def index
    @tobacco_and_alcohols = TobaccoAndAlcohol.all
  end
end

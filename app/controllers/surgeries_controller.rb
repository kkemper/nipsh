class SurgeriesController < ApplicationController
  def new
  end

  def index
    @surgeries = Surgery.all
  end
end

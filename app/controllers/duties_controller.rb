class DutiesController < ApplicationController
  def new
  end

  def index
    @duties = Duty.all
  end
end

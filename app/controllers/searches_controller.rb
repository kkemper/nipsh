class SearchesController < ApplicationController
  def new
    @search = Search.new
  end

  def index
    @searches = Search.all
  end

  def create
    @search = Search.create!(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private

  def search_params
    params.require(:search).permit(:aerobic_test_type, :aerobic_capacity, :flex_sit_reach, :hand_strength, :leg_strength, :arm_strength, :vertical_jump, :endurance_push_ups, :plank)
  end
end


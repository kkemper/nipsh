  class FitnessTestsController < ApplicationController
  def new
    @fitness_test
  end

  def index
    @fitness_test = FitnessTest.includes([:mds_reports]).by_aerobic_test_type(params[:aerobic_test_type]).by_aerobic_capacoty(params[:aerobic_capacity]).by_flex_sit_reach(params[:flex_sit_reach]).by_hand_strength(params[:hand_strength]).by_leg_strength(params[:leg_strength]).by_arm_strength(params[:arm_strength]).by_vertical_jump(params[:vertival_jump]).by_endurance_push_ups(params[:endurance_push_ups]).by_plank(params[:plank])
    render :json =>  @guitars.as_json(:include => :mds_reports)
  end
end

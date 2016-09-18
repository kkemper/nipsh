class Search < ActiveRecord::Base
  def fitness_tests
    @fitness_tests ||= find_fitness_tests
  end


private

  def find_fitness_tests
    fitness_tests = FitnessTest.order(:id)
    fitness_tests = fitness_tests.where(aerobic_test_type: aerobic_test_type) if aerobic_test_type.present?
    fitness_tests = fitness_tests.where(aerobic_capacity: aerobic_capacity) if aerobic_capacity.present?
    fitness_tests = fitness_tests.where(flex_sit_reach: flex_sit_reach) if flex_sit_reach.present?
    fitness_tests = fitness_tests.where(hand_strength: hand_strength) if hand_strength.present?
    fitness_tests = fitness_tests.where(leg_strength: leg_strength) if leg_strength.present?
    fitness_tests = fitness_tests.where(arm_strength: arm_strength) if arm_strength.present?
    fitness_tests = fitness_tests.where(vertical_jump: vertical_jump) if vertical_jump.present?
    fitness_tests = fitness_tests.where(endurance_push_ups: endurance_push_ups) if endurance_push_ups.present?
    fitness_tests = fitness_tests.where(plank: plank) if plank.present?
    fitness_tests
  end
end

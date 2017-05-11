class FitnessTest < ActiveRecord::Base
	belongs_to :mds_report

  scope :by_aerobic_test_type, lambda { |aerobic_test_type|
    return scoped unless aerobic_test_type.present?
    where(:aerobic_test_type => aerobic_test_type)
  }

   scope :by_aerobic_capacity, lambda { |aerobic_capacity|
    return scoped unless aerobic_capacity.present?
    where(:aerobic_capacity => aerobic_capacity)
  }

   scope :by_flex_sit_reach, lambda { |flex_sit_reach|
    return scoped unless flex_sit_reach.present?
    where(:flex_sit_reach => flex_sit_reach)
  }

   scope :by_hand_strength, lambda { |hand_strength|
    return scoped unless hand_strength.present?
    where(:hand_strength => hand_strength)
  }

   scope :by_leg_strength, lambda { |leg_strength|
    return scoped unless leg_strength.present?
    where(:leg_strength => leg_strength)
  }

   scope :by_arm_strength, lambda { |arm_strength|
    return scoped unless arm_strength.present?
    where(:arm_strength => arm_strength)
  }

   scope :by_vertical_jump, lambda { |vertical_jump|
    return scoped unless vertical_jump.present?
    where(:vertical_jump => vertical_jump)
  }

   scope :by_endurance_push_ups, lambda { |endurance_push_ups|
    return scoped unless endurance_push_ups.present?
    where(:endurance_push_ups => endurance_push_ups)
  }

  scope :by_plank, lambda { |plank|
    return scoped unless plank.present?
    where(:plank => plank)
  }

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(mds_report_id fit_test_date aerobic_test_type aerobic_capacity flex_sit_reach hand_strength leg_strength arm_strength vertical_jump endurance_push_ups plank) + _ransackers.keys
  end


end

class BsdiExercise < ActiveRecord::Base
  belongs_to :bsdi_report

    private

  def self.ransackable_attributes(auth_object = nil)
    %w(bsdi_exercise bsdi_how_long_active bsdi_sedentary bsdi_hip_knee_problems bsdi_other_reason_no_exercise bsdi_activity_minutes_vigorous bsdi_activity_minutes_moderate bsdi_physical_inactivity) + _ransackers.keys
  end
end

class BsdiExercisesController < InheritedResources::Base

  private

    def bsdi_exercise_params
      params.require(:bsdi_exercise).permit(:bsdi_report_id, :bsdi_exercise, :bsdi_how_long_active, :bsdi_sedentary, :bsdi_hip_knee_problems, :bsdi_other_reason_no_exercise, :bsdi_activity_minutes_vigorous, :bsdi_activity_minutes_moderate, :bsdi_physical_inactivity)
    end
end


class BsdiActivitiesController < InheritedResources::Base

  private

    def bsdi_activity_params
      params.require(:bsdi_activity).permit(:bsdi_report_id, :bsdi_rfc_activity, :bsdi_active_barrier_time, :bsdi_active_barrier_people, :bsdi_active_barrier_unfamiliar, :bsdi_active_barrier_resources, :bsdi_active_barrier_unpleasant, :bsdi_active_barrier_medical_worry, :bsdi_active_barrier_intimidating, :bsdi_active_barrier_embarrassed, :bsdi_active_barrier_other, :bsdi_active_barrier_injury)
    end
end


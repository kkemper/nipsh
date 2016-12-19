class BsdiBloodPressuresController < InheritedResources::Base

  private

    def bsdi_blood_pressure_params
      params.require(:bsdi_blood_pressure).permit(:bsdi_report_id, :bsdi_systolic, :bsdi_diastolic, :bsdi_bp_medicine)
    end
end


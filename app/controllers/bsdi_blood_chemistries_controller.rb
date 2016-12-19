class BsdiBloodChemistriesController < InheritedResources::Base

  private

    def bsdi_blood_chemistry_params
      params.require(:bsdi_blood_chemistry).permit(:bsdi_report_id, :bsdi_bchem_date, :bsdi_cholesterol, :bsdi_high_cholesterol, :bsdi_cholesterol_meds, :bsdi_hdl, :bsdi_hdl_status, :bsdi_ldl, :bsdi_high_ldl, :bsdi_triglycerides, :bsdi_high_triglyceride, :bsdi_glucose, :bsdi_pre_diabetes, :bsdi_a1c, :bsdi_blood_chem_risk)
    end
end


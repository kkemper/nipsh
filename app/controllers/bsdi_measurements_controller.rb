class BsdiMeasurementsController < InheritedResources::Base

  private

    def bsdi_measurement_params
      params.require(:bsdi_measurement).permit(:bsdi_weight, :bsdi_height, :bsdi_waist, :bsdi_waist_risk, :bsdi_hips, :bsdi_weight_belief, :bsdi_bmi, :bsdi_bmi_category, :bsdi_high_risk_bmi, :bsdi_hypertrophic, :bsdi_disabled)
    end
end


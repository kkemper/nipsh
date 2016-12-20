class BsdiTobaccoAndAlcoholsController < InheritedResources::Base

  private

    def bsdi_tobacco_and_alcohol_params
      params.require(:bsdi_tobacco_and_alcohol).permit(:bsdi_report_id, :bsdi_tobacco, :bsdi_alcohol, :bsdi_binge_drinking, :bsdi_medication_relax)
    end
end


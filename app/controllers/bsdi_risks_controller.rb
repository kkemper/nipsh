class BsdiRisksController < InheritedResources::Base

  private

    def bsdi_risk_params
      params.require(:bsdi_risk).permit(:bsdi_report_id, :bsdi_risk_stratification, :bsdi_risk_factor_count, :bsdi_self_rating)
    end
end


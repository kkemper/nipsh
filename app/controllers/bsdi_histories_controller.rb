class BsdiHistoriesController < InheritedResources::Base

  private

    def bsdi_history_params
      params.require(:bsdi_history).permit(:bsdi_report_id, :bsdi_family_stroke, :bsdi_family_cancer, :bsdi_family_diabetes, :bsdi_family_cholesterol, :bsdi_family_hypertension, :bsdi_family_heart_only)
    end
end


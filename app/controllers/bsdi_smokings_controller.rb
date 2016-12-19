class BsdiSmokingsController < InheritedResources::Base

  private

    def bsdi_smoking_params
      params.require(:bsdi_smoking).permit(:bsdi_report_id, :bsdi_smoking_status)
    end
end


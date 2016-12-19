class BsdiHospsController < InheritedResources::Base

  private

    def bsdi_hosp_params
      params.require(:bsdi_hosp).permit(:bsdi_report_id, :bsdi_hospitalization)
    end
end


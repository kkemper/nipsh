class BsdiCurrentJobsController < InheritedResources::Base

  private

    def bsdi_current_job_params
      params.require(:bsdi_current_job).permit(:bsdi_report_id, :bsdi_organization, :bsdi_department, :bsdi_service, :bsdi_job_title)
    end
end


class BsdiReportsController < InheritedResources::Base

  private

    def bsdi_report_params
      params.require(:bsdi_report).permit(:bsdi_patient_id, :bsdi_date, :bsdi_newest, :bsdi_valid_year, :bsdi_user_defined_flag, :bsdi_staff_entry)
    end
end


class BsdiPatientsController < InheritedResources::Base

  private

    def bsdi_patient_params
      params.require(:bsdi_patient).permit(:bsdi_id, :bsdi_psmid, :bsdi_fname, :bsdi_lname, :bsdi_gender, :bsdi_birthdate, :bsdi_previous_id)
    end
end


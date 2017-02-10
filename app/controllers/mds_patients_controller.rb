class MdsPatientsController < InheritedResources::Base

  private

    def mds_patient_params
      params.require(:mds_patient).permit(:lname, :fname, :mname, :gender, :employeeid, :ssn)
    end
end


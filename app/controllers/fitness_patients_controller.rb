class FitnessPatientsController < InheritedResources::Base

  private

    def fitness_patient_params
      params.require(:fitness_patient).permit(:fitness_patient_id, :fitness_lname, :fitness_fname, :fitness_dept, :fitness_gender)
    end
end


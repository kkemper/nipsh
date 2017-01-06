class FitnessReportsController < InheritedResources::Base

  private

    def fitness_report_params
      params.require(:fitness_report).permit(:fitness_report_id, :fitness_patient_id, :fitness_test_date)
    end
end


class PsychReportsController < InheritedResources::Base

  private

    def psych_report_params
      params.require(:psych_report).permit(:research_id, :grade, :examiner, :date_of_evaluation, :gave_consent)
    end
end


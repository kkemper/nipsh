class PsychEmploymentsController < InheritedResources::Base

  private

    def psych_employment_params
      params.require(:psych_employment).permit(:research_id, :department, :position, :prior_pub_saf_exprnce, :yrs_exprnce_pub_saf)
    end
end


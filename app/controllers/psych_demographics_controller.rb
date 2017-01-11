class PsychDemographicsController < InheritedResources::Base

  private

    def psych_demographic_params
      params.require(:psych_demographic).permit(:research_id, :gender, :age, :ethnicity)
    end
end


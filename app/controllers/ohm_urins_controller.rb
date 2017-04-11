class OhmUrinsController < InheritedResources::Base

  private

    def ohm_urin_params
      params.require(:ohm_urin).permit(:moddate, :ssn, :ohm_occblood, :ohm_uringlucose, :ohm_protein)
    end
end


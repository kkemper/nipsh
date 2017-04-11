class OhmImmunesController < InheritedResources::Base

  private

    def ohm_immune_params
      params.require(:ohm_immune).permit(:moddate, :ssn, :ohm_immune_type, :ohm_immune_note)
    end
end


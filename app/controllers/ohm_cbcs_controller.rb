class OhmCbcsController < InheritedResources::Base

  private

    def ohm_cbc_params
      params.require(:ohm_cbc).permit(:moddate, :ssn, :ohm_wbc, :ohm_hemo, :ohm_hema)
    end
end


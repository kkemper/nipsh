class OhmBchemsController < InheritedResources::Base

  private

    def ohm_bchem_params
      params.require(:ohm_bchem).permit(:moddate, :ssn, :ohm_sgot, :ohm_sgpt, :ohm_trigly, :ohm_chol, :ohm_ldl, :ohm_ldh, :ohm_hdl, :ohm_glucose, :ohm_bun, :ohm_creatinine)
    end
end


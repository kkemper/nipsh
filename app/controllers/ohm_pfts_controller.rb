class OhmPftsController < InheritedResources::Base

  private

    def ohm_pft_params
      params.require(:ohm_pft).permit(:moddate, :ssn, :ohm_height, :ohm_weight, :ohm_bp, :ohm_fvc, :ohm_fev1, :ohm_fev1fvc, :ohm_fvcpr, :ohm_fev1pr)
    end
end


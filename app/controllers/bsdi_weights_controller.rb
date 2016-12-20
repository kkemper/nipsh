class BsdiWeightsController < InheritedResources::Base

  private

    def bsdi_weight_params
      params.require(:bsdi_weight).permit(:bsdi_report_id, :rfc_weight, :bsdi_weight_barrier_knowledge, :bsdi_weight_barrier_access, :bsdi_weight_barrier_social, :bsdi_weight_barrier_exercise, :bsdi_weight_barrier_stress)
    end
end


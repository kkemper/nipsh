class BsdiSmokingBarriersController < InheritedResources::Base

  private

    def bsdi_smoking_barrier_params
      params.require(:bsdi_smoking_barrier).permit(:bsdi_report_id, :bsdi_rfc_smoking, :bsdi_smoke_barrier_knowledge, :bsdi_smoke_barrier_temptation, :bsdi_smoke_barrier_friends, :bsdi_smoke_barrier_weight, :bsdi_smoke_barrier_stress, :bsdi_smoke_barrier_other)
    end
end


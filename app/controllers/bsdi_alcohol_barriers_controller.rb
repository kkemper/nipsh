class BsdiAlcoholBarriersController < InheritedResources::Base

  private

    def bsdi_alcohol_barrier_params
      params.require(:bsdi_alcohol_barrier).permit(:bsdi_report_id, :bsdi_rfc_alcohol, :bsdi_alcohol_barrier_knowledge, :bsdi_alcohol_barrier_temptation, :bsdi_alcohol_barrier_friends, :bsdi_alcohol_barrier_perception, :bsdi_alcohol_barrier_stress, :bsdi_alcohol_barrier_other)
    end
end


class BsdiDietBarriersController < InheritedResources::Base

  private

    def bsdi_diet_barrier_params
      params.require(:bsdi_diet_barrier).permit(:bsdi_report_id, :bsdi_rfc_diet, :bsdi_diet_barrier_unfamililar, :bsdi_diet_barrier_time, :bsdi_diet_barrier_people, :bsdi_diet_barrier_taste, :bsdi_diet_barrier_other, :bsdi_diet_barrier_expense)
    end
end


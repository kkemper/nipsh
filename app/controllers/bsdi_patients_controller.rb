class BsdiPatientsController < InheritedResources::Base
    include SearchesHelper

  def index
    @search = BsdiPatient.includes(:bsdi_activities, :bsdi_alcohol_barriers, :bsdi_annuals, :bsdi_blood_chemistries, :bsdi_blood_pressures, :bsdi_current_jobs, :bsdi_diet_barriers, :bsdi_diets, :bsdi_diseases, :bsdi_exercises, :bsdi_histories, :bsdi_hosps, :bsdi_measurements, :bsdi_psyches, :bsdi_risks, :bsdi_smoking_barriers, :bsdi_smokings, :bsdi_tobacco_and_alcohols, :bsdi_weights, :bsdi_reports).ransack(params[:q])
    @results = @search.result(distinct: true)
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?

     respond_to do |format|
      format.html
      format.csv { send_data @results.to_csv, filename: "results-#{Date.today}.csv" }
    end
  end

  def advanced_search
   @search = BsdiPatient.ransack(params[:q])
    @search.build_grouping unless @search.groupings.any?
    @results = @search_result
  end

  private

    def bsdi_patient_params
      params.require(:bsdi_patient).permit(:bsdi_id, :bsdi_psmid, :bsdi_fname, :bsdi_lname, :bsdi_gender, :bsdi_birthdate, :bsdi_previous_id)
    end
end


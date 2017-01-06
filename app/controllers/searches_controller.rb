class SearchesController < ApplicationController
  include SearchesHelper

  def index
    @search = Patient.includes(:physical_exams, :tobacco_and_alcohols, :surgeries, :physical_activities, :patients, :other_employments, :mds_reports, :lab_data, :injury_illnesses, :immunizations, :hearing_tests, :health_conditions, :fitness_tests, :family_histories, :duties, :demographics, :current_jobs, :cancer_screenings).ransack(params[:q])
    @results = @search.result
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?

     respond_to do |format|
      format.html
      format.csv { send_data @results.to_csv, filename: "results-#{Date.today}.csv" }
    end
  end

  def advanced_search
   @search = Patient.ransack(params[:q])
    @search.build_grouping unless @search.groupings.any?
    @results = @search_result
  end

  private

   
  end


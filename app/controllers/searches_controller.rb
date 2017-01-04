class SearchesController < ApplicationController
  include SearchesHelper

  def index
    @search = Patient.ransack(params[:q])
    @results = ransack_result.includes(:cancer_screenings, :current_jobs, :demographics, :duties, :family_histories, :fitness_tests, :health_conditions, :hearing_tests, :immunizations, :injury_illnesses, :lab_data, :mds_reports, :other_employments, :physical_activities, :surgeries, :tobacco_and_alcohols)
  end

  def advanced_search
    @search = ransack_params
    @search.build_grouping unless @search.groupings.any?
    @results = ransack_result
  end

  private
    def ransack_result
      @search.result(distinct: user_wants_distinct_results?)
    end
  end


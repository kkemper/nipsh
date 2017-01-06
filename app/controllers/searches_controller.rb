class SearchesController < ApplicationController
  include SearchesHelper

  def index
    @search = Patient.includes(:physical_exams).ransack(params[:q])
    @results = @search.result
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?

  end

  def advanced_search
   @search = Patient.ransack(params[:q])
    @search.build_grouping unless @search.groupings.any?
    @results = @search_result
  end

  private

   
  end


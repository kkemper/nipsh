class SearchesController < ApplicationController
  include SearchesHelper

  def index
    @search = Patient.ransack(params[:q])
    @results = @search.result(distinct: true)
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


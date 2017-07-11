class SearchesController < ApplicationController
  include SearchesHelper

  def index
    @search = MasterSearch.ransack(params[:q])
    @results = @search.result(distinct: true)
    @output = @results.to_a
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?

     respond_to do |format|
      format.html
      format.csv { render csv: @results, filename: "results-#{Date.today}.csv" }
    end
  end
 

  private

   
  end


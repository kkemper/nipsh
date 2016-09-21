class ResultsController < ApplicationController
  def new
  end

  def index
    @results = Result.all
  end
end

class QueriesController < ApplicationController
  def new
    @queries = Query.all
  end
end

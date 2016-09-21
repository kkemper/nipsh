class FamilyHistoriesController < ApplicationController
  def new
  end

  def index
    @family_histories = FamilyHistory.all
  end
end

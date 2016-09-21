class InjuryIllnessesController < ApplicationController
  def new
  end

  def index
    @injury_illnesses = InjuryIllness.all
  end
end

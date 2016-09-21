class ImmunizationsController < ApplicationController
  def new
  end

  def index
    @immunizations = Immunization.all
  end
end

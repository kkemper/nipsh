class FitnessTestsController < ApplicationController
  def new
    @fitness_test = FitnessTest.new
  end

  def index
    @fitness_tests = @FitnessTest.all
    @patient.fname = Patient.fname
  end
end

class HearingTestsController < ApplicationController
  def new
  end

  def index
    @hearing_tests = HearingTest.all
  end
end

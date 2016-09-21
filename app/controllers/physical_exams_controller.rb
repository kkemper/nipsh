class PhysicalExamsController < ApplicationController
  def new
  end

  def index
    @physical_exams = PhysicalExam.all
  end
end

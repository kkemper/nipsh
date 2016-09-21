class CurrentJobsController < ApplicationController
  def new
  end

  def index
      @current_jobs = CurrentJob.all
  end
end

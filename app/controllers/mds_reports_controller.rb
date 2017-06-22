class MdsReportsController < ApplicationController
  def new
  end

  def index
    @mds_reports = MDSReport.all
  end
end

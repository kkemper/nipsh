class LabDatasController < ApplicationController
  def new
  end

  def index
    @lab_datas = LabData.all
  end
end

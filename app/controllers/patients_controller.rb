class PatientsController < ApplicationController
  def new
    @patient = Patient.new
    @patients = Patient.all
    if params[:search]
      @patients = Patient.search(params[:search]).order("lname DESC")
    else
      @patients = Patient.all.order('lname DESC')
    end
  end

  def index
    @s = Patient.ransack(params[:q])
  	@patients = @s.result
    @s.build_condition
    respond_to do |format|
      format.html
      format.csv { send_data @patients.to_csv, filename: "results-#{Date.today}.csv" }
    end
  end

  def show
    @patients = Patient.find(params[:lname])
  end
end

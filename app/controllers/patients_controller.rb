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
      format.csv { send_data Find.Patient.to_csv(@patients)}\
    end
  end

  def show
    @patients = Patient.find(params[:lname])
  end
end

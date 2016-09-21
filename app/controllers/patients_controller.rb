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
  	@patients = Patient.all
  	if params[:search]
  		@patients = Patient.search(params[:search]).order("lname DESC")
  	else
  		@patients = Patient.all.order('lname DESC')
  	end
  end

  def show
    @patients = Patient.find(params[:lname])
  end
end

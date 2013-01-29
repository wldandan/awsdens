class DoctorsController < ApplicationController

  before_filter :load_clinic
  layout "basicInfo"

  # GET /doctors
  # GET /doctors.json
  def index
    # @doctors = Doctor.all
    @doctors = @clinic.doctors.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @doctors }
    end
  end

  # GET /doctors/1
  # GET /doctors/1.json
  def show
    @doctor = @clinic.doctors.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doctor }
    end
  end

  # GET /doctors/new
  # GET /doctors/new.json
  def new
    @doctor = @clinic.doctors.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @doctor }
    end
  end

  # GET /doctors/1/edit
  def edit
    @doctor = @clinic.doctors.find(params[:id])
  end

  # POST /doctors
  # POST /doctors.json
  def create
    @doctor = @clinic.doctors.new(params[:doctor])

    respond_to do |format|
      if @doctor.save
        format.html { redirect_to [@clinic, @doctor], notice: 'Doctor was successfully created.' }
        format.json { render json: @doctor, status: :created, location: @doctor }
      else
        format.html { render action: "new" }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /doctors/1
  # PUT /doctors/1.json
  def update
    @doctor = @clinic.doctors.find(params[:id])

    respond_to do |format|
      if @doctor.update_attributes(params[:doctor])
        format.html { redirect_to [@clinic], notice: 'Doctor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctors/1
  # DELETE /doctors/1.json
  def destroy
    @doctor = @clinic.doctors.find(params[:id])
    @doctor.destroy

    respond_to do |format|
      format.html { redirect_to clinic_doctors_url(@clinic) }
      format.json { head :no_content }
    end
  end

  private
    def load_clinic
      @clinic = Clinic.find(params[:clinic_id])
    end  
end

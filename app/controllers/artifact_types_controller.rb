class ArtifactTypesController < ApplicationController

  before_filter :load_clinic
  layout "basicInfo"

  # GET /artifact_types
  # GET /artifact_types.json
  def index
    @artifact_types = @clinic.artifact_types.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @artifact_types }
    end
  end

  # GET /artifact_types/1
  # GET /artifact_types/1.json
  def show
    @artifact_type = @clinic.artifact_types.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @artifact_type }
    end
  end

  # GET /artifact_types/new
  # GET /artifact_types/new.json
  def new
    @artifact_type = @clinic.artifact_types.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @artifact_type }
    end
  end

  # GET /artifact_types/1/edit
  def edit
    @artifact_type = @clinic.artifact_types.find(params[:id])
  end

  # POST /artifact_types
  # POST /artifact_types.json
  def create
    @artifact_type = @clinic.artifact_types.new(params[:artifact_type])

    respond_to do |format|
      if @artifact_type.save
        # format.html { redirect_to @artifact_type, notice: 'Artifact type was successfully created.' }
        format.html { redirect_to [@clinic, @artifact_type], notice: 'Artifact type was successfully created.' }
        format.json { render json: @artifact_type, status: :created, location: @artifact_type }
      else
        format.html { render action: "new" }
        format.json { render json: @artifact_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /artifact_types/1
  # PUT /artifact_types/1.json
  def update
    @artifact_type = @clinic.artifact_types.find(params[:id])

    respond_to do |format|
      if @artifact_type.update_attributes(params[:artifact_type])
        # format.html { redirect_to @artifact_type, notice: 'Artifact type was successfully updated.' }
        format.html { redirect_to [@clinic], notice: 'Artifact type  was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @artifact_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artifact_types/1
  # DELETE /artifact_types/1.json
  def destroy
    @artifact_type = @clinic.artifact_types.find(params[:id])
    @artifact_type.destroy

    respond_to do |format|
      format.html { redirect_to artifact_types_url }
      format.json { head :no_content }
    end
  end

  private
  def load_clinic
    @clinic = Clinic.find(params[:clinic_id])
  end 

end

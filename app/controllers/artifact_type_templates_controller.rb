class ArtifactTypeTemplatesController < ApplicationController

  layout "basicInfo"
  
  # GET /artifact_type_templates
  # GET /artifact_type_templates.json
  def index
    @artifact_type_templates = ArtifactTypeTemplate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @artifact_type_templates }
    end
  end

  # GET /artifact_type_templates/1
  # GET /artifact_type_templates/1.json
  def show
    @artifact_type_template = ArtifactTypeTemplate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @artifact_type_template }
    end
  end

  # GET /artifact_type_templates/new
  # GET /artifact_type_templates/new.json
  def new
    @artifact_type_template = ArtifactTypeTemplate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @artifact_type_template }
    end
  end

  # GET /artifact_type_templates/1/edit
  def edit
    @artifact_type_template = ArtifactTypeTemplate.find(params[:id])
  end

  # POST /artifact_type_templates
  # POST /artifact_type_templates.json
  def create
    @artifact_type_template = ArtifactTypeTemplate.new(params[:artifact_type_template])

    respond_to do |format|
      if @artifact_type_template.save
        format.html { redirect_to @artifact_type_template, notice: 'Artifact type template was successfully created.' }
        format.json { render json: @artifact_type_template, status: :created, location: @artifact_type_template }
      else
        format.html { render action: "new" }
        format.json { render json: @artifact_type_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /artifact_type_templates/1
  # PUT /artifact_type_templates/1.json
  def update
    @artifact_type_template = ArtifactTypeTemplate.find(params[:id])

    respond_to do |format|
      if @artifact_type_template.update_attributes(params[:artifact_type_template])
        format.html { redirect_to @artifact_type_template, notice: 'Artifact type template was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @artifact_type_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artifact_type_templates/1
  # DELETE /artifact_type_templates/1.json
  def destroy
    @artifact_type_template = ArtifactTypeTemplate.find(params[:id])
    @artifact_type_template.destroy

    respond_to do |format|
      format.html { redirect_to artifact_type_templates_url }
      format.json { head :no_content }
    end
  end

end

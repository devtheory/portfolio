class ProjectsController < ApplicationController
  
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    #authorize @project
    if @project.save
      redirect_to @project, notice: "Project was created successfully"
    else
      flash[:error] = "Project was not created. Please try again."
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
    #authorize @project
  end

  def edit
  end

  def index
    @projects = current_user.projects 
    @customer_projects = Project.where(poc: current_user.id)
  end

  def update
  end

  private

  def project_params
    params.require(:project).permit(:name, :url, :host, :poc)
  end
end

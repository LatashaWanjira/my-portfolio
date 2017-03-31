class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:notice] = "Project was suuccesfully added!"
      redirect_to projects_path
    else
      flash[:alert] = "Project was not added!"
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      flash[:notice] = "Project was suuccesfully added!"
      redirect_to projects_path
    else
      flash[:alert] = "Project was not added!"
      render :edit
  end  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:notice] = "Project was suuccesfully deleted!"
    redirect_to projects_path
  end

  private
  def project_params
    params.require(:project).permit(:project_name, :description, :link, :image, :skill_list)
  end
end

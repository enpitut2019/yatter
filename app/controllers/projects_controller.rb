class ProjectsController < ApplicationController

  def index
    @projects = Project.all.order(updated_at: "DESC")
  end
  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_index_path
    end
  end

  def new
    @project=Project.new
  end

  def edit
    @project=Project.find(params[:id])
  end

  def update
    @project=Project.find(params[:id])
    if @project.update_attributes(edit_project_params)
      redirect_to projects_index_path
    end
  end

  private
    def project_params
      params.require(:project).permit(:owner,:title)
    end
    def edit_project_params
      params.require(:project).permit(:owner,:title,:project_status_id)
    end
end

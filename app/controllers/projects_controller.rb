class ProjectsController < ApplicationController
  
  def index
    @projects = Project.all.order(created_at: "DESC")
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

  def cheer
    @project=Project.find(params[:project_id])
    Project.increment_counter(:cheered_count, @project.id)
    redirect_to projects_index_path
  end

  private
    def project_params
      params.require(:project).permit(:owner,:title)
    end
end

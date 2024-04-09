class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    begin
      @project = Project.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The project you are looking for does not exist."
      redirect_to projects_path # Redirect to the projects index page or any other appropriate page
    end
  end
end

private

def project_params
  params.require(:project).permit(:title, :details, :image)
end

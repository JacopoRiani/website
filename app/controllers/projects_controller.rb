class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def venue
  end

  def pokemarket
  end

  def thesis
  end

  def roadaccident
  end

  def tripquest
  end

  def show
    @project = Project.find(params[:id])
  end

  private

  def project_params
    params.require(:project).permit(:title, :details, :image)
  end
end

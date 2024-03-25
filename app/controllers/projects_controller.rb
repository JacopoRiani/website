class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @project = @projects.first
  end
end

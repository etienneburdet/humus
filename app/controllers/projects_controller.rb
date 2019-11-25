class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit update]
  skip_before_action :authenticate_user!, only: %i[index]

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    @project.uhi = compute_bonus
    @project.biodiversity = compute_bonus
    @project.water_infiltration = compute_bonus
    @project.local_food = compute_bonus
    @project.save
    redirect_to projects_path
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name,
                                    :description,
                                    :investment_cap,
                                    :duration, :surface,
                                    :start_date,
                                    :project_type)
  end

  def compute_bonus
    return 0
  end
end

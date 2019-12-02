class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
  end

  # def new
  #   @favorite = Favorite.new
  # end

  def create
    @project = Project.find(params[:favorite][:project])
    @favorite = Favorite.new(user: current_user, project: @project)
    @favorite.save
  end

  def destroy
    @project = Project.find(params[:favorite][:project])
    @favorite = Favorite.find_by(user: current_user, project: @project)
    @favorite.destroy
  end
end

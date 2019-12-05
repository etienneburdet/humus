class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.where(user: current_user)
  end

  def create
    @user = current_user
    @project = Project.find(params[:favorite][:project])
    @favorite = Favorite.new(user: current_user, project: @project)
    @favorite.save
    render :create
  end

  def destroy
    @user = current_user
    @project = Project.find(params[:favorite][:project])
    @favorite = Favorite.find_by(user: current_user, project: @project)
    @favorite.destroy
    render :create
  end
end

class UsersController < ApplicationController
  def index; end

  def show
    @user = User.find_by(params[:id])
    @articles = @user.articles
  end
end

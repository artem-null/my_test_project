class CommentsController < ApplicationController

  def show; end

  def create
    @article = Article.find_by(id: params[:article_id])
    @user = @article.user

    @commment = Comment.new(text: params[:comment][:text], article_id: @article.id, user_id: @user.id)

    redirect_to root_path if @commment.save
  end

  def new
    @article = Article.find_by(params[:article_id])
    @user = @article.user
  end
end

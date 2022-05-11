class ArticlesController < ApplicationController
  def show
    @article = Article.find_by(id: params[:id])
  end

  def create
    @user = User.find_by(params[:id])
    @article = @user.articles.create(article_params)
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end

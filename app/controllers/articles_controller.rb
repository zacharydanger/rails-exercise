class ArticlesController < ApplicationController
  def create
    @article = Article.new(article_params)

    if @article.save
      render json: @article, status: :created
    else
      render status: :unprocessable_entity
    end
  end

  private

  def article_params
    params.permit(:title, :content, :author, :category, :published_at)
  end
end

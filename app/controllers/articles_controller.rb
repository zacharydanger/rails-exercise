class ArticlesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :error_404

  def create
    @article = Article.new(article_params)

    if @article.save
      render json: @article, status: :created
    else
      render status: :unprocessable_entity
    end
  end

  def show
    @article = Article.find(params[:id])

    render json: @article
  end

  private

  def article_params
    params.permit(:title, :content, :author, :category, :published_at)
  end
end

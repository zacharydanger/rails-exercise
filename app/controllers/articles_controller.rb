class ArticlesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :error_404

  def index
    @articles = Article.all.order("published_at desc")

    render json: @articles
  end

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

  def destroy
    method_not_allowed
  end

  def update
    method_not_allowed
  end

  private

  def article_params
    params.permit(:title, :content, :author, :category, :published_at)
  end
end

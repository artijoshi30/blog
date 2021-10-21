class ArticlesController < ApplicationController
  before_action :correct_user, only: [:edit, :update, :destroy]
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find_by_id(params[:id])
  end

  def new
    @article = Article.new
    #render:new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path
    else
      render:new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to articles_path
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  def currect_user
    @article = Article.find_by(id: params[:id])
    unless currect_user?(@article.user)
      redirect_to articles_path(currect_user)
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :image, :name, :tag_list)
  end

end


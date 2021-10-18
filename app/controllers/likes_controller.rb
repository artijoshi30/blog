class LikesController < ApplicationController
   before_action :find_article
    def create
      if already_liked?
        @article.likes.where(user_id: current_user.id).first.destroy
         else
        @article.likes.create(user_id: current_user.id)
        end
        redirect_to article_path(@article)
    end

    def find_like
      @like = @article.likes.find(params[:id])
    end

    private
    def find_article
      @article= Article.find(params[:article_id])
    end
    def already_liked?
      Like.where(user_id: current_user.id, article_id:params[:article_id]).exists?
    end
end

class FollowsController < ApplicationController
	before_action :find_article
	def create
		if already_followed?
		@article.follows.where(user_id: current_user.id).first.destroy
	else
		@article.follows.create(user_id: current_user.id)
	end
		redirect_to article_path(@article)
	end

	private
	def find_article
		@article = Article.find(params[:article_id])
	end
	 def already_followed?
      Follow.where(user_id: current_user.id, article_id:params[:article_id]).exists?
    end
end
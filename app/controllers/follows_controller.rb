class FollowsController < ApplicationController
	before_action :find_article
	def create
		if already_followed?
			@article.user.followers.where(follower_id: current_user.id, followed_id: @article.user.id).first.destroy
		else
			@article.user.followers.create(follower_id: current_user.id, followed_id: @article.user.id)
		end
		redirect_to article_path(@article)
	end

	private
	  def already_followed?
      Follow.where(follower_id: current_user.id, followed_id: @article.user.id).exists?
    end

     def find_article
      @article= Article.find(params[:article_id])
    end

end
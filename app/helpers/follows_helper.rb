module FollowsHelper
	def already_followed?(article)
      Follow.where(user_id: current_user.id, article_id: article.id).exists?
    end
end


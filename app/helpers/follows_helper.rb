module FollowsHelper

  def follow_toggle(article)
    text = already_followed?(article) ? "Unfollow" : "Follow"

    button_to text, article_follows_path(article), method: :post
  end

  def already_followed?(article)
    Follow.where(follower_id: current_user.id, followed_id: @article.user.id).exists?
  end

end

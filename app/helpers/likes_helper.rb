module LikesHelper

  def article_like_toggle(article)
    text = already_liked?(article) ? "Unlike" : "Like"

    button_to text, article_likes_path(article), method: :post
  end

  def already_liked?(article)
    if current_user
      Like.where(user_id: current_user.id, article_id: article.id).exists?
    end
  end
end

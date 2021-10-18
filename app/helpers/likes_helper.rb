module LikesHelper

  def article_like_toggle(article)
    text = already_liked?(article) ? "Unlike" : "Like"

    button_to text, article_likes_path(article), method: :post, class: 'btn btn-primary btn-sm'
  end

  def already_liked?(article)
      Like.where(user_id: current_user.id, article_id: article.id).exists?
  end
end

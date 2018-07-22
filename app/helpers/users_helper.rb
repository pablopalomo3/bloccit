module UsersHelper
  def has_posts_or_comments?(user)
    (user.posts.count === 0) && (user.comments.count === 0)
  end
  def has_favs?(user)
    user.favorites.count === 0
  end
end
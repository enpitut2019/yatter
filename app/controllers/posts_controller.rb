class PostsController < ApplicationController
  def show
    @post = Post.offset(rand(Post.count)).first
    if signed_in?
      posts = Post.where.not(user_id: @current_user.id)
      @post = posts.offset(rand(posts.count)).first
    end
  end
end

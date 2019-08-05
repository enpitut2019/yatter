class PostsController < ApplicationController
  
  before_action :require_sign_in!, only: ['index']

  def index
    @posts = Post.where(user_id: @current_user.id).order(updated_at: "DESC")
  end

  def show
    @post = Post.offset(rand(Post.count)).first
    if signed_in?
      posts = Post.where.not(user_id: @current_user.id)
      @post = posts.offset(rand(posts.count)).first
    end
  end
end

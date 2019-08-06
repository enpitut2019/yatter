class PostsController < ApplicationController

  before_action :require_sign_in!, only: ['new', 'index']

  def show
    @post = Post.offset(rand(Post.count)).first
    if signed_in?
      posts = Post.where.not(user_id: @current_user.id)
      @post = posts.offset(rand(posts.count)).first
    end
    if(@post.nil?)
      redirect_to posts_index_path
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = @current_user.id
    if @post.save
      redirect_to posts_show_path
    end

  end

  def index
    @posts = Post.where(user_id: @current_user.id).order(updated_at: "DESC")
    @home_point = @current_user.home_point
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end

end

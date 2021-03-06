class PostsController < ApplicationController

  before_action :require_sign_in!, only: ['new', 'index']

  def show
    @post = Post.offset(rand(Post.count)).first
    if(@post.nil?)
      redirect_to posts_index_path
    end
    if signed_in?
      @unread = true
      posts_not_current_user = Post.where.not(user_id: @current_user.id)
      reactions_by_current_user = @current_user.reactions
      if reactions_by_current_user.present?
       posts = (posts_not_current_user) - (posts_not_current_user.joins(:reactions).where(reactions:{user_id:@current_user.id}))
       #@post = posts.(rand(posts.count)).first
       if posts.any?
        @post = posts.shuffle.sample(1).first
       else
        @unread = false
       end
      else
        @post = posts_not_current_user.offset(rand(posts_not_current_user.count)).first
      end
      @home_point = @current_user.home_point
    else
      @unread = true
      @home_point = 0
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = @current_user.id
    if @post.save
      redirect_to posts_index_path
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

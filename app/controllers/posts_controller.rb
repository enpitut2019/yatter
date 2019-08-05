class PostsController < ApplicationController
  def show
    @post = Post.offset(rand(Post.count)).first
  end

end

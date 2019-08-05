class PostsController < ApplicationController

    before_action :require_sign_in!, only: ['new']

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post =  Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.user_id = @current_user.id
        if @post.save
            redirect_to projects_index_path
        end
            
    end

    private

    def post_params
        params.require(:post).permit(:content)
    end
        

end

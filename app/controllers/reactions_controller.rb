class ReactionsController < ApplicationController

    before_action :require_sign_in!, only: ['create']

    def create
        if params[:emotion] == "0"
            @reaction = @current_user.reactions.new(emotion: :not_like, post_id: params[:post_id].to_i)
        elsif params[:emotion] == "1"
            @reaction = @current_user.reactions.new(emotion: :like, post_id: params[:post_id].to_i)
        end
        if @reaction.save
            redirect_to posts_show_path
        end
    end
end

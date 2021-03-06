class ReactionsController < ApplicationController

  # before_action :require_sign_in!, only: ['create']

  def create
    if (signed_in?)
      if params[:emotion] == "0"
        @reaction = @current_user.reactions.new(emotion: :not_like, post_id: params[:post_id].to_i)
      elsif params[:emotion] == "1" || params[:emotion] == "2" || params[:emotion] == "3" || params[:emotion] == "4" || params[:emotion] == "5" || params[:emotion] == "6"
        @reaction = @current_user.reactions.new(emotion: params[:emotion].to_i, post_id: params[:post_id].to_i)
        User.increment_counter(:home_point, @current_user.id)
      end
      if @reaction.save
        redirect_to posts_show_path
      end
    else
      user = User.find(-1)
      if params[:emotion] == "0"
        @reaction = user.reactions.new(emotion: :not_like, post_id: params[:post_id].to_i)
      elsif params[:emotion] == "1" || params[:emotion] == "2" || params[:emotion] == "3" || params[:emotion] == "4" || params[:emotion] == "5" || params[:emotion] == "6"
        @reaction = user.reactions.new(emotion: params[:emotion].to_i, post_id: params[:post_id].to_i)
        User.increment_counter(:home_point, user.id)
      end
      if @reaction.save
        redirect_to posts_show_path
      end
    end
  end
end

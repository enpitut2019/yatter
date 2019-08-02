class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.project_id=params[:project_id]
    if @comment.save
      redirect_to projects_index_path
    end
  end
  private
  def comment_params
      params.require(:comment).permit(:name,:comment,:project_id)
    end
  end

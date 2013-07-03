class CommentsController < ApplicationController

  def index
    @comments = Comment.ordered.all
  end

  def create
    @comment = Comment.create(params[:comment])
    RealtimeCommentsController.publish('/comments', @comment.attributes)
    render :js => "$('input[type=text]').val('');"
  end

end

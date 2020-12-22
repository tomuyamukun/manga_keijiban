class CommentsController < ApplicationController

  def index
  end


  def new
    @comment = Comment.new
  end


  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to root_path
    else 
        render :new
    end
  end


  def show
  end


  private
 
  def comment_params
    params.require(:comment).permit(:name, :text).merge(comic_id: params[:comic_id])
  end

end

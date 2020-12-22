class ComicsController < ApplicationController
before_action :basic_auth, only: [:new]




  def index 
    @comics = Comic.all
  end

  def new
    @comic = Comic.new
  end

  def create
    @comic = Comic.new(comic_params)
    if @comic.save
      redirect_to root_path
    else 
      render :new
    end
    
  end

def show
  @comic = Comic.find(params[:id])
  # @comments = Comment.where(comic_id: @comic.id)
  @comments = @comic.comments.all
end




private
def comic_params
  params.require(:comic).permit(:image, :title, :summary, :link).merge(user_id: current_user.id)
end
  

def comment_params
  params.require(:comment).permit(:name).merge(user_id: current_user.id, comic_id: params[:comic_id])
end


end

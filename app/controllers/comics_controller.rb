class ComicsController < ApplicationController

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
  @rooms = Room.all
end




private
def comic_params
  params.require(:comic).permit(:image, :title, :summary).merge(user_id: current_user.id)
end
  

def room_params
  params.require(:room).permit(:name).merge(user_id: current_user.id, comic_id: params[:comic_id])
end


end

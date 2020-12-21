class RoomsController < ApplicationController

  def index
  end


  def new
    @room = Room.new
  end


  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
      # redirect_to controller: :comics, action: :show
    else 
        render :new
    end
  end


  def show
  end


  private
 
  def room_params
    params.require(:room).permit(:name, :text).merge(comic_id: params[:comic_id])
  end

end

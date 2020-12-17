class RoomsController < ApplicationController

  def index
    @message = Message.new
    # @messages = @room.message.all
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
    params.require(:room).permit(:name).merge(comic_id: params[:comic_id])
  end

  def message_params
    params.require(:message).permit(:nickname, :text).merge(comic_id: params[:comic.id], room_id: params[:room_id])
  end
end

class MessagesController < ApplicationController
  
  def index
  end
  
  def new
    @message = Message.new
  end

  def create
    # @room = Room.find(params[:id])
    @message = Message.new(message_params)
    @message.save
    redirect_to root_path
  end

private

def room_params
  params.require(:room).permit(:name).merge(user_id: current_user.id, comic_id: params[:comic_id])
end



def message_params
  params.require(:message).permit(:nickname, :text).merge(comic_id: params[:comic_id], room_id: params[:room_id])
end

end

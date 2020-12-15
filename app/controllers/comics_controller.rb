class ComicsController < ApplicationController

  def index 
  end

  def new
    @comic = Comic.new
  end

  def create
  end

private
def comic_params
  params.require(:comic).permit(:image, :title, :summary).merge(user_id: current_user.id)
end
  
end

class LostItemController < ApplicationController

  def index
    @lost_items = LostItem.all
    render :index
  end

  def create
    @lost_item = LostItem.create(
      name: params[:name],
      image_url: params[:image_url],
      last_seen: params[:last_seen],
    )
    render :show
  end

  def show
    @lost_item = LostItem.find_by(id: params[:id])
    render :show
  end

end

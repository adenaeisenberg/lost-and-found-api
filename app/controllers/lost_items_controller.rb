class LostItemsController < ApplicationController

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

  def update
    @lost_item = LostItem.find_by(id: params[:id])
    @lost_item.update(
      name: params[:name] || @lost_item.name,
      image_url: params[:image_url] || @lost_item.image_url,
      last_seen: params[:last_seen] || @lost_item.last_seen,
    )
    render :show
  end

  def destroy
    @lost_item = LostItem.find_by(id: params[:id])
    @lost_item.destroy
    render json: { message: "lost_item destroyed successfully" }
  end

end

class FoundItemsController < ApplicationController

  def index
    @found_items = FoundItem.all
    render :index
  end

  def create
    @found_item = FoundItem.create(
      name: params[:name],
      image_url: params[:image_url],
      location: params[:location],
      date: params[:date],
    )
    render :show
  end

  def show
    @found_item = FoundItem.find_by(id: params[:id])
    render :show
  end

  def update
    @found_item = FoundItem.find_by(id: params[:id])
    @found_item.update(
      name: params[:name] || @found_item.name,
      image_url: params[:image_url] || @found_item.image_url,
      location: params[:location] || @found_item.location,
      date: params[:date] || @found_item.date,
    )
    render :show
  end

  def destroy
    @found_item = FoundItem.find_by(id: params[:id])
    @found_item.destroy
    render json: { message: "Found Item destroyed successfully" }
  end

end

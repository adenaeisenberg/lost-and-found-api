class LostItemController < ApplicationController

  def index
    @lost_items = LostItem.all
    render :index
  end

  
end

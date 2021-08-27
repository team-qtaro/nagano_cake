class Public::ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @items = Item.all
  end
  
  def update
    
  end
  
  private
  def image_params
    params.permit(:image)
  end
end

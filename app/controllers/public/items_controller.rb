class Public::ItemsController < ApplicationController
  def index

    @items = Item.all.page(params[:page]).per(6)

  end

  def show
    @item = Item.find(params[:id])
    @items = Item.all
    @cart_item = CartItem.new
  end
  
  def update
    
  end
  
  private
  def image_params
    params.permit(:image)
  end
end

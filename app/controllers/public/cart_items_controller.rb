class Public::CartItemsController < ApplicationController
    def index
        @cart_items = CartItem.all
        @item = Item.find_by(params[:id])
        @total_price = Item.all.sum(:price)
    end
    
    def destroy
        
        @cart_items = CartItem.find_by(params[:id])
        @cart_items.destroy
        redirect_to cart_items_path
    end
    
    def edit
    end
    
    def update
        @cart_item = CartItem.all
        @cart_item.update(cart_item_params)
        redirect_to cart_items_path
    end
    
    def reset
        @cart_items = Item.all
        @cart_items.destroy_all
        redirect_to cart_items_path
    end
    
  def cart_item_params
    params.permit(:quantity)
  end
end

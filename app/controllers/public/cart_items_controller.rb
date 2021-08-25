class Public::CartItemsController < ApplicationController
    def index
        @cart_items = Item.all
    end
    
    def destroy
        @cart_items = Item.all
        @cart_items.destroy
        redirect_to cart_items_path
    end
    
    def edit
    end
    
    def update
        @cart_item = Item.all
        @cart_item.update(cart_item_params)
        redirect_to cart_items_path
    end
    
    def reset
        @cart_items = Item.all
        @cart_items.destroy_all
        redirect_to cart_items_path
    end
    
  def cart_item_params
    params.permit(:name, :price)
  end
end

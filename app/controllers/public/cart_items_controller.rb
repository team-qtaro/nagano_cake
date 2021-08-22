class Public::CartItemsController < ApplicationController
    def index
        @cart_items = CartItem.all
    end
    
    def create
    end
    
    def destroy
    end
    
    def edit
    end
    
    def reset
    end
end

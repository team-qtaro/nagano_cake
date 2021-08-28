class Public::CartItemsController < ApplicationController
    def create
      @cart_item = CartItem.new(cart_item_params)

      @cart_item.customer_id=current_customer.id

      @cart_items=current_customer.cart_items.all

      @cart_item.save

        redirect_to cart_items_path,notice:"カートに商品が入りました"
    end
    def index
        @cart_items = current_customer.cart_items.all
        @total_price = @cart_items.inject(0) { |sum, item| sum + item.sum_of_price }
        @cart_item=CartItem.new
    end

    def destroy

        @cart_items = CartItem.find_by(params[:id])
        @cart_items.destroy
        redirect_to cart_items_path
    end

    def edit
    end

    def update
        @cart_item = CartItem.where(params[:item_id])
        @cart_item.update(cart_item_params)
        redirect_to cart_items_path
    end

    def reset
        @cart_items = Item.all
        @cart_items.destroy_all
        redirect_to cart_items_path
    end

  def cart_item_params
    params.required(:cart_item).permit(:quantity, :item_id)
  end
end

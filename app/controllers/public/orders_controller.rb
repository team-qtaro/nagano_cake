class Public::OrdersController < ApplicationController
  def new
    @customers = current_customer
    @order = Order.new

  end

  def index
  end

  def show
  end

  def confirm
    @order = Order.new(orders_params)
  end

  def create
  end

  def complete
  end

  private
  def orders_params
     params.require(:order).permit(:shipping_postal_code,:payment_method,:shipping_address,:shipping_name)
  end
end

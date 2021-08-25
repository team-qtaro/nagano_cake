class Public::OrdersController < ApplicationController
  def new
    @customers = current_customer
    @order = Order.new
  end

  def index
    @order = Order.all#とりあえず指定してる
  end

  def show
  end

  def confirm
    @order = Order.new(orders_params)

  end

  def create
    @order = Order.new(orders_params)
    @order.save
    redirect_to complete_orders_path
  end

  def complete
  end

  private
  def orders_params
     params.require(:order).permit(:shipping_postal_code,:payment_method,:shipping_address,:shipping_name)
  end
end

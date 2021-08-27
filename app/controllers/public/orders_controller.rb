class Public::OrdersController < ApplicationController
  def new
    @order = Order.new
    @customer = current_customer
  end

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def confirm
    @order = Order.new(orders_params)
    @customer = current_customer
  end

  def create
    @order = Order.new(orders_params)
    @order.customer_id = current_customer.id
    @customer = current_customer
    if @order.save
       redirect_to complete_orders_path
    else
      render :new
    end
  end

  def complete
  end

  private
  def orders_params
     params.require(:order).permit(:customer_id,:shipping_postal_code,:payment_method,:shipping_address,:shipping_name)
  end
end

class Public::OrdersController < ApplicationController
  def new
    @order = Order.new
    @customer = current_customer
  end

  def index
    # @customer = Customer.find(params[:id])
    # @order = @customers.order
    @order = Order.all#とりあえず指定してる
  end

  def show
    # @order = Order.find(params[:id])
  end

  def confirm
    @order = Order.new(orders_params)

  end

  def create
    @order = Order.new(orders_params)
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
     params.require(:order).permit(:shipping_postal_code,:payment_method,:shipping_address,:shipping_name)
  end
end

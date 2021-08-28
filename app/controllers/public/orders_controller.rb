class Public::OrdersController < ApplicationController
  def new
    @order = Order.new
    @customer = current_customer
    @addresses = current_customer.send_addresses
  end

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    @order_details = @order.order_details
    @total = 0
  end

  def confirm
    @order = Order.new(orders_params)
    @customer = current_customer
    @cart_items = current_customer.cart_items
    if params[:address_number] == "0"
       @address_postal_codo = @customer.postal_code
       @address_location = @customer.address
       @address_name = @customer.last_name
       @address_name = @customer.first_name
    elsif params[:address_number] == "1"

    elsif params[:address_number] =="2"
      @address_postal_codo = @order.shipping_postal_code
      @address_location = @order.shipping_address
      @address_name = @order.shipping_name
    end
    @cart_items = current_customer.cart_items
    @total = 0
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

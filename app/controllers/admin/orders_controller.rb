class Admin::OrdersController < ApplicationController

  def index
    @order_lists = Order.all
  end

  def show
    @order = current_user.orders
    @order_items = current.user.orders.order_details
  end

end

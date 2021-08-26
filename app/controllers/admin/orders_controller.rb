class Admin::OrdersController < ApplicationController

  def index
    @order_lists = Order.all
  end

  def show

  end

end

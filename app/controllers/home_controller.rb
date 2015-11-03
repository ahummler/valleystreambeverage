class HomeController < ApplicationController
  def about
  end

  def products
  end

  def specials
  end

  def contact
  end

  def order
    @order = Order.new
  end
  def corp
    @corp = Corp.new
  end
  def FAQ
  end
  def new
    @request = Request.new
    # Request.save
    # redirect_to home_order_path, notice: "Thanks for the request"
    respond_to do |format|
    format.html
    format.js  
end
  end
end

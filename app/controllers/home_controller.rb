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

  def FAQ
  end
  def new
    @request = Request.new
    respond_to do |format|
      format.html
      format.js  
  end
end


end

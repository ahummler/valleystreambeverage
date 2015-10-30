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
end

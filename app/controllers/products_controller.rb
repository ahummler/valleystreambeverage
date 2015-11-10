class ProductsController < ApplicationController
  def index
  	@products = Product.all
  end

  def import
  	Product.import(params[:file])
  	redirect_to products_index_path, notice: "Fountain of Knowledge has been imported"
  end

  def order
  end

  def home
  end
end

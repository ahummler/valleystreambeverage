class RequestsController < ApplicationController
  def new
  	 @request = Request.new
  
    # redirect_to home_order_path, notice: "Thanks for the request"
    # respond_to do |format|
    # format.html { redirect_to @request, notice: "Thanks for your request"}
    # format.js  
  end
  def create
	 @request = Request.new(req_params)
     if @request.save
      redirect_to root_path, notice: "Thanks you will be contacted shortly!"
    else
      render :new
    end
  end
  def home
  end

  def index
  end

  def show
  end
end

private


def req_params
    params.require(:request).permit(:fname, :bname, :email)
end

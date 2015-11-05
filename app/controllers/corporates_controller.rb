class CorporatesController < ApplicationController
  def index
  end

  def new
  	  @corp = Corporate.new
  
    # respond_to do |format|
    #   format.html {redirect_to home_corporate_path, notice: "Thanks you will be contacted shortly!"}
    #   format.js
  
    
  end


  def create
	 @corp = Corporate.new(corp_params)
     if @corp.save
      redirect_to root_path, notice: "Thanks you will be contacted shortly!"
    else
      render :new
    end
  end

private

  def corp_params
    params.require(:corporate).permit(:taxid, :companyname, :address, :owner)
  end
end




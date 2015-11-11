class CorporatesController < ApplicationController
  def index
  end

  def new
  	  @corp = Corporate.new
  end

  def email
    email = params['email']
    sender = params['companyname']
    address = params['address']
    taxid = params['taxid']
    owner = params['owner']
    email_body = "This is tax id #{taxid}, This is address #{address}, This is owner#{owner}"
    m = Mandrill::API.new
    message = {  
     :subject => "Corporate Application Info",  
     :from_name => sender, 
     :text => email_body,
     :to => [  
       {  
         :email => "phillysuperbowl@gmail.com",  
         :name => "Artie Hummler"
       }  

     ],  
     :html => email_body,  
     :from_email => email  
    }  
    
    sending = m.messages.send message  
    puts sending
    redirect_to new_corporate_path, notice: "Thanks for contacting us #{sender}"
  end
    # respond_to do |format|
    #   format.html {redirect_to home_corporate_path, notice: "Thanks you will be contacted shortly!"}
    #   format.js
  
    

  def import
  Corporate.import(params[:file])
  redirect_to root_url, notice: "Products imported."
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




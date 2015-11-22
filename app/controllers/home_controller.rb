class HomeController < ApplicationController
  require 'mandrill'

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
  end

  def email
    email = params['email']
    sender = params['name']
    email_body = params['comments']
    m = Mandrill::API.new
    message = {  
     :subject => "Contact from VSBC",  
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
    redirect_to home_contact_path, notice: "Thanks for contacting us #{sender}"
  end

end



    
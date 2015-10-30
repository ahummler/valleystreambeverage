require 'mandrill'

post '/email' do
email = params["email"]
sender =params["name"]
email_body = params["comment"]
m = Mandrill::API.new
message = {  
 :subject=> "New Contact Form Submission",  
 :from_name=> sender,  
 :text=>email_body,  
 :to=>[  
   {  
     :email=> "phillysuperbowl@gmail.com",  
     :name=> "Artie Hummler"  
   }  
 ],  
 :html=>"<html><h1>Hi <strong>message</strong>, how are you?</h1></html>",  
 :from_email=>"ahummler@optonline.net"  
}  
sending = m.messages.send message  
puts sending
redirect to '/thanks'
end

get '/thanks' do
	erb :thanks
end
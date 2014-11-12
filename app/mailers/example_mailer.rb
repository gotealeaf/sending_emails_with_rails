class ExampleMailer < ActionMailer::Base
  default from: "fun4saurabh@gmail.com"

  def sample_email(user)

    @user = user
    # mail(to: @user.email, subject: 'Sample Email')	
    # First, instantiate the Mailgun Client with your API key
	  puts ENV['api_key'].to_s
    puts ENV['domain'].to_s
    mg_client = Mailgun::Client.new ENV['api_key'].to_s

  	# Define your message parameters
  	message_params = {:from    => 'fun4saurabh@gmail.com',
  	                  :to      => @user.email,
  	                  :subject => 'Sample Mail using Mailgun API',
  	                  :text    => 'We are using mailgun-ruby for this'}

  	# Send your message through the client
  	mg_client.send_message ENV['domain'].to_s, message_params
  end
end

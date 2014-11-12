class ExampleMailer < ActionMailer::Base
  default from: "fun4saurabh@gmail.com"

  def sample_email(user)
  	# puts user.name
  	# puts user.email
  	MAILGUN_CONFIG['api_key']
    @user = user
    # mail(to: @user.email, subject: 'Sample Email')	
    # First, instantiate the Mailgun Client with your API key
	mg_client = Mailgun::Client.new MAILGUN_CONFIG['api_key']

	# Define your message parameters
	message_params = {:from    => 'fun4saurabh@gmail.com',
	                  :to      => @user.email,
	                  :subject => 'The Ruby SDK is awesome!',
	                  :text    => 'It is really easy to send a message!, isn\'t it ?'}

	# Send your message through the client
	mg_client.send_message MAILGUN_CONFIG['domain'], message_params
  end
end

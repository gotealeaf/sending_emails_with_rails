class ExampleMailer < ActionMailer::Base
  default from: "fun4saurabh@gmail.com"

  def sample_email(user)

    @user = user
    mail(to: @user.email, subject: 'Sample Email')	
    # First, instantiate the Mailgun Client with your API key

   #  mg_client = Mailgun::Client.new ENV['api_key']

  	# # Define your message parameters
  	# message_params = {:from    => 'fun4saurabh@gmail.com',
  	#                   :to      => @user.email,
  	#                   :subject => 'Sample Mail using Mailgun API',
  	#                   :text    => 'We are using mailgun-ruby for this to s'}

  	# # Send your message through the client
  	# mg_client.send_message ENV['domain'], message_params
  end
end

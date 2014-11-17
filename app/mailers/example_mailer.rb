class ExampleMailer < ActionMailer::Base
  # default from: "from@example.com"

  def sample_email(user)
  # def sample_email(email)

    @user = user
    # @email = email

    # Uncomment the following when using SMTP for sending out mails

    #mail(to: @user.email, subject: 'Sample Email')	

    # End 
    
    # Uncomment the following when using mailgun-ruby

    mg_client = Mailgun::Client.new ENV['api_key']

  	message_params = {:from    => ENV['gmail_username'],
                      :to      => @user.email,
  	                  # :to      => @email,
  	                  :subject => 'Sample Mail using Mailgun API',
  	                  :text    => 'Mail is sent using Mailgun API via mailgun-ruby via active job-delay-later'}

  	mg_client.send_message ENV['domain'], message_params

    # End 
  end
end

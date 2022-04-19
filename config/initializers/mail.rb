ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :user_name => "apikey",
  :password => "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",
  :domain => '78d62ee457934e4eb77c5b1d6ae04715.vfs.cloud9.us-east-1.amazonaws.com',
  :enable_starttls_auto => true 
  
}



# heroku config:get SENDGRID_USERNAME

# heroku config:get SENDGRID_PASSWORD
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address               =>  'smtp.sendgrid.net',
  :port                  =>  '587',
  :authentication        =>  :plain,
  :user_name             =>  'app35000694@heroku.com',
  :password              =>  '1vf9tihj',
  :domain                =>  'heroku.com',
  :enable_starttls_auto  => true   
}
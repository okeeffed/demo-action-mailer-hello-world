class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @email = params[:email]
    @name = params[:name]
    @username = params[:username]
    @trial_start_date = Date.current
    @trial_end_date = Date.current + 7.days
    @trial_length = '7 days'
    @support_email = 'support@example.com'
    @help_url = 'https://help.example.com'
    @action_url = 'http://localhost:3000'
    @login_url = 'http://localhost:3000/login'
    @live_chat_url = 'http://localhost:3000/live_chat'

    mail(to: @email, subject: 'Welcome to My Awesome Site')
  end
end

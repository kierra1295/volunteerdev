class UserMailer < ApplicationMailer
  default from: 'kierra1295@gmail.com' #'notifications@example.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to VolunteerDev')
  end
end

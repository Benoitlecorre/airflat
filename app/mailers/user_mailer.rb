class UserMailer < ActionMailer::Base
  default from: "lefollmarc@hotmail.fr"

  def welcome_email(user)
    @user = user
    @url  = 'http://secure-beyond-3270.herokuapp.com/users/sign_in'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end

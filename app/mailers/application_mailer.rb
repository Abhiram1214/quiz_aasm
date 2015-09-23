class ApplicationMailer < ActionMailer::Base
  default from: 'challapalli.abhiram@gmail.com'

  def welcome(user)
      @email = user.email
      @user=user
      mail(to: @email, :subject=>"Account Conformation")
  end
end

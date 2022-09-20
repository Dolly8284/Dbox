class UserMailer < ApplicationMailer
  default from: 'abhishek@techwinners.in'

  def sharing_email
    @user = params[:user]
    @url  = 'http://localhost:3000/posts/sharing'
    mail(
      to: email_address_with_name(@user.email, @user.first_name), 
      subject: 'Invited you to view file on Dbox')
  end
end

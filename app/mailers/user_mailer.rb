class UserMailer < ApplicationMailer
	
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'New Reminder')
  end
  
  def remind_mail(reminder,email,by)
  	@reminder =reminder
  	@by = by
  	mail(to: email, subject: 'Reminder Alert')
  end

end
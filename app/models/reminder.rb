class Reminder < ApplicationRecord
	#after_create :send_mail

	def send_mail(user)
		puts "TODAY'S REMINDER"
		if !self.private
			@all = User.all
			@all.each do |u|
				UserMailer.remind_mail(self,u.email,user.email).deliver_now
			end
		else
			UserMailer.remind_mail(self,user.email,user.email).deliver_now
		end
	end
	
	def when_to_run
		self.timings
	end


	handle_asynchronously :send_mail, :run_at => Proc.new{|i| i.when_to_run }
end

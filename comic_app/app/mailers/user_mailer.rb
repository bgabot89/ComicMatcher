class UserMailer < ApplicationMailer
	default from: "bgabotest@gmail.com"
	def notification_email(user)
		@user = user
		mail(to: @user.email, subject: "You have a Collaboration Request from Collab-A-Comic.com") 
	end
end
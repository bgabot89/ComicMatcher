class UserMailer < ApplicationMailer

	def notification_email(user)
		@user = user
		mail(to: @user.email, subject: "You have a Collaboration Request from Collab-A-Comic.com")
end
end

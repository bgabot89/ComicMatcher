class ApplicationMailer < ActionMailer::Base
  default from: "usermail@mail.com"
  layout 'mailer'
end

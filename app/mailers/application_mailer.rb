class ApplicationMailer < ActionMailer::Base
  default from: 'info@seamlesscapaccess.com',
          reply_to: 'courtney@seamlessca.com',
          cc: 'courtney@seamlessca.com',
          bcc: 'hello@seamlessca.com'
  layout "mailer"
end

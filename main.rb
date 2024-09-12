require_relative 'email_sender'
require_relative 'services'

def main
  ServiceLocator.register_service(Service::MAILCHIMP, MailChimp.new(attachment: attachment))
  # ServiceLocator.register_service(Service::SENDGRID, SendGrid.new)
  # ServiceLocator.register_service(Service::SMTP, Smtp.new(smtp_server: smtp_server, signature: signature))
  sender = EmailSender.new

  result = sender.send_email(
    service: Service::MAILCHIMP,
    to_address: "arjan@arjancodes.com",
    subject: "Urgent meeting",
    body: "Very secret email"
  )

  puts result
end

main()

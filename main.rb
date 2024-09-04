require_relative 'email_sender'
require_relative 'services'

def main
  email_service = MailChimp.new(attachment: attachment)

  sender = EmailSender.new(email_service: email_service) # injection obj

  result = sender.send_email(
    to_address: "arjan@arjancodes.com",
    subject: "Urgent meeting",
    body: "Very secret email"
  )

  puts result
end

main()

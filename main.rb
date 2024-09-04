require_relative 'email_sender'
require_relative 'services'

def main
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

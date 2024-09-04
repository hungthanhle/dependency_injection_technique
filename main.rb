require_relative 'services'

def main
  sender = EmailService.new

  result = sender.send_email(
    to_address: "arjan@arjancodes.com",
    subject: "Urgent meeting",
    body: "Very secret email"
  )

  puts result
end

main()

require_relative 'service_locator'
require_relative 'services'

class Service
  SENDGRID = :sendgrid
  MAILCHIMP = :mailchimp
  SMTP = :smtp
end

class EmailSender
  def initialize
  end

  def send_email(service:, to_address:, subject:, body:)
    email_sender = ServiceLocator.get_service(service)
    if email_sender
      email_sender.send_email(to_address: to_address, subject: subject, body: body)
    else
      raise "Service not found"
    end
  end
end

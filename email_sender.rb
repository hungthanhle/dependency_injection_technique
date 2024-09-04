require_relative 'services'

class Service
  SENDGRID = :sendgrid
  MAILCHIMP = :mailchimp
end

class EmailSender
  def send_email(service:, to_address:, subject:, body:)
    case service
    when Service::MAILCHIMP
      email_sender = MailChimp.new
      email_sender.send_email(to_address: to_address, subject: subject, body: body)
    when Service::SENDGRID
      email_sender = SendGrid.new
      email_sender.send_email(to_address: to_address, subject: subject, body: body)
    else
      MailChimp.new.send_email(to_address: to_address, subject: subject, body: body)
    end
  end
end

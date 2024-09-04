require_relative 'services'

class Service
  SENDGRID = :sendgrid
  MAILCHIMP = :mailchimp
  SMTP = :smtp
end

class EmailSender
  # def send_email(service:, to_address:, subject:, body:, options: {}) # send_email(..., {smtp_server: , signature: })
  def send_email(service:, to_address:, subject:, body:, smtp_server: nil, signature: nil, attachment: nil)
    case service
    when Service::MAILCHIMP
      email_sender = MailChimp.new
      email_sender.send_email(to_address: to_address, subject: subject, body: body, attachment: attachment)
    when Service::SENDGRID
      email_sender = SendGrid.new
      email_sender.send_email(to_address: to_address, subject: subject, body: body)
    when Service::SMTP
      email_sender = Smtp.new
      email_sender.send_email(to_address: to_address, subject: subject, body: body, smtp_server: smtp_server, signature: signature)
    else
      MailChimp.new.send_email(to_address: to_address, subject: subject, body: body, attachment: attachment)
    end
  end
end

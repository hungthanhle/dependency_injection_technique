require_relative 'email_service'

class Smtp
  include EmailService

  def send_email(to_address:, subject:, body:, smtp_server:, signature: "")
    formatted_body = "#{body}\n\n-- #{signature}"
    "Sending email to #{to_address} using SMTP with subject '#{subject}' and body: #{formatted_body}"
  end
end

class SendGrid
  include EmailService

  def send_email(to_address:, subject:, body:)
    "Sending email to #{to_address} using SendGrid with subject '#{subject}' and body: #{body}"
  end
end

class MailChimp
  include EmailService

  def send_email(to_address:, subject:, body:, attachment:)
    base_message = "Sent email to #{to_address} with subject '#{subject}' and body: #{body} using MailChimp"
    "#{base_message} with attachment #{attachment}"
  end
end

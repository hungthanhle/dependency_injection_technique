require_relative 'email_service'

class SendGrid
  include EmailService

  def send_email(to_address:, subject:, body:)
    "Sending email to #{to_address} using SendGrid with subject '#{subject}' and body: #{body}"
  end
end

class MailChimp
  include EmailService

  def send_email(to_address:, subject:, body:)
    "Sent email to #{to_address} with subject '#{subject}' and body: #{body} using MailChimp"
  end
end

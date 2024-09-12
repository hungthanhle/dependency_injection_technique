require_relative 'email_service'

class Smtp
  include EmailService

  def initialize(smtp_server:, signature: "")
    @smtp_server = smtp_server
    @signature = signature
  end

  def send_email(to_address:, subject:, body:)
    # Implement SMTP email sending logic
    formatted_body = "#{body}\n\n-- #{@signature}"
    "Sent email to #{to_address} with subject '#{subject}' and body: #{formatted_body} using SMTP"
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

  def initialize(attachment: "")
    @attachment = attachment
  end

  def send_email(to_address:, subject:, body:)
    base_message = "Sent email to #{to_address} with subject '#{subject}' and body: #{body} using MailChimp"
    if @attachment && !@attachment.empty?
      "#{base_message} with attachment #{@attachment}"
    else
      base_message
    end
  end

  def add_attachment(file_path:)
    @attachment = "Added #{file_path} attachment"
  end
end

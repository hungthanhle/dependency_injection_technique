require_relative 'services'

class EmailSender
  def initialize(email_service)
    @email_service = email_service # injection obj with other config
  end

  def send_email(to_address, subject, body)
    @email_service.send_email(to_address: to_address, subject: subject, body: body)
  end
end

class RequestMailer < ActionMailer::Base
  default from: "from@example.com"

  def request_message(signup)
    @recipent_email = Content.find("settings:recipent-email").value
    @request = request
    mail(to: @recipent_email, subject: 'New request')
  end
end

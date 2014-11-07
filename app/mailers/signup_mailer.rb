class SignupMailer < ActionMailer::Base
  default from: "test@1000i.pl"

  def signup_message(signup)
  	@recipent_email = Content.find("settings:recipent-email").value
  	@signup = signup
  	mail(to: @recipent_email, subject: 'New register')
  end
end

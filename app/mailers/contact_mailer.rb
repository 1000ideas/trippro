class ContactMailer < ActionMailer::Base
  default from: "test@1000i.pl"


  def contact_message(contact)
  	@recipent_email = Content.find("settings:recipent-email").value
  	@contact = contact
  	mail(to: @recipent_email, subject: 'Welcome to My Awesome Site')
  end
end

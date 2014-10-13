Testimonial.destroy_all
n=1
3.times do
	
Testimonial.create(name: "Chris Dane",position: "President of Hickory Global Partners ", content: "We are partnering with TripPro® because their technologically 
advanced platform and agent-focused design enables us to provide our member agencies airfares 
to destinations worldwide presented as one-stop shopping,
TripPro® enhances our already robust air program in an easy and smart way.", photo: File.new("#{Rails.root}/db/seeds/testimonials_pics/#{n}.png") )
n+=1
end
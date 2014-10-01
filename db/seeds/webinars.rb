#Webinars
Webinar.destroy_all
5.times do
Webinar.create(language: "English", when: Date.today, link: "www.google.pl")
end
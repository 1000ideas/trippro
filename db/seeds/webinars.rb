#Webinars
Webinar.destroy_all
5.times do
Webinar.create(language: "English", when: Date.today, link: "www.google.pl")
end

Webinar.create(language: "English", when: "2014-12-06 22:00:00", link: "www.google.pl")
Webinar.create(language: "English", when: "2014-12-06 22:00:00", link: "www.google.pl")
Webinar.create(language: "English", when: "2014-12-06 22:00:00", link: "www.google.pl")

Webinar.create(language: "English", when: "2014-11-06 22:00:00", link: "www.google.pl")

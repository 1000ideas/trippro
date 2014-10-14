L::News.destroy_all
n=1
3.times do
puts n
 L::News.create(content: Faker::Lorem.sentence(500), title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", 
 photo: File.new("#{Rails.root}/db/seeds/news_pics/#{n}.jpg"))
n+=1
end
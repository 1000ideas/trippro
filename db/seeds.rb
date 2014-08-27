print "Adding seeds data..."

passwd = if Rails.env.development?
  "admin"
else
 (0...5).map{ ('a'..'z').to_a[rand(26)] }.join
end

admin = User.create email: 'admin@admin.pl',
  password: passwd,
  password_confirmation: passwd,
  role: :admin

if admin.errors.empty?
  puts "\nAdmin password: '#{passwd}'"
else
  puts "\nError while creating admin account: #{admin.errors.full_messages.join('. ')}."
end

puts "done!"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

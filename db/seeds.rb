require 'faker'

100.times do |n|
  name = Faker::Name.name
  email = Faker::Internet.email
  Courier.create!(name:  name,
                  email: email)
end

require 'faker'

50.times do |n|
  name = Faker::Name.name
  email = Faker::Internet.email
  Courier.create!(name:  name,
                  email: email)
  10.times do
    tracking_number = Faker::Bank.routing_number.to_s
    courier_id = n + 1
    Package.create!(tracking_number: tracking_number,
                    courier_id:      courier_id)
  end
  5.times do
    tracking_number = Faker::Bank.routing_number.to_s
    courier_id = n + 1
    Package.create!(tracking_number: tracking_number,
                    delivery_status: true,
                    courier_id:      courier_id)
  end
end

puts "Clearing old data..."
Ride.destroy_all
Passenger.destroy_all
Driver.destroy_all

puts "🙋‍♀️🙋‍♀️🙋‍♀️ Seeding passengers 🙋‍♀️🙋‍♀️🙋‍♀️..."
20.times do
  Passenger.create(first_name: Faker::Name.name,
                   last_name: Faker::Name.last_name,
                   rating: rand(1...5),
                   email: Faker::Internet.email,
                   cell_number: Faker::PhoneNumber.cell_phone)
end

puts "✇✇✇ Seeding drivers ✇✇✇..."
20.times do
  Driver.create(first_name: Faker::Name.name,
                last_name: Faker::Name.name,
                email: Faker::Internet.email,
                rating: rand(1...5),
                car: Faker::Vehicle.make_and_model,
                car_color: Faker::Vehicle.color,
                license_plate: Faker::Vehicle.license_plate,
                car_year: Faker::Vehicle.year,
                bio: Faker::Quote.most_interesting_man_in_the_world)
end

puts "🚗🚗🚗 Seeding rides 🚗🚗🚗..."
# Create 20 random rides
50.times do
  driver_id = Driver.ids.sample
  passenger_id = Passenger.ids.sample
  price = rand(10...50)
  pick_up = Faker::Address.street_address
  drop_off = Faker::Address.street_address
  # TODO: create rides! Remember, a ride belongs to a driver
  # and a ride belongs to a passenger. Driver -< Ride >- Passenger
  Ride.create(driver_id: driver_id, passenger_id: passenger_id, price: price, pick_up: pick_up, drop_off: drop_off)
  # Feel free to use Faker for some fake pick up/drop off address data:
  # https://github.com/faker-ruby/faker/blob/master/doc/default/address.md

end

puts "Done seeding! 🌸"

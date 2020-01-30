# Run this script using: rails db:seed

Student.destroy_all
House.destroy_all

NUMBER_OF_HOUSES = 5

NUMBER_OF_HOUSES.times do
  house_name = Faker::Movies::HarryPotter.unique.house
  house_points = rand(333..9999)
  House.create(name: house_name, points: house_points)
end

puts "Created #{House.count} Houses."

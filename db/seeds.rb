# Run this script using: rails db:seed

Appointment.destroy_all
Student.destroy_all
Teacher.destroy_all
House.destroy_all

NUMBER_OF_HOUSES = 5

NUMBER_OF_HOUSES.times do
  house_name = Faker::Movies::HarryPotter.unique.house
  house_points = rand(333..9999)
  house = House.create(name: house_name, points: house_points)

  number_of_students = rand(10..15)
  number_of_students.times do
    # The created student's house_id (FK) will be assigned the house's PK.
    house.students.create(name: Faker::Movies::HarryPotter.unique.character)
  end

  number_of_teachers = rand(2..3)
  number_of_teachers.times do
    house.teachers.create(name: Faker::Movies::HarryPotter.unique.character)
  end
end

# Method A
# teachers = Teacher.all.sample(10)

# Method B
# teachers = Teacher.order(Arel.sql('random()')).limit(10)

# Method C
teachers = Teacher.random_collection(10)

teachers.each do |teacher|
  students = Student.random_collection(3)

  students.each do |student|
    start_time = Faker::Time.forward(days: rand(0..60), period: :morning)
    Appointment.create(student: student, teacher: teacher, start_time: start_time)
  end
end

Page.create(title: "About Us", content: "Update this content.", permalink: "about_us")
Page.create(title: "Contact", content: "Update this content.", permalink: "contact")

puts "Created #{House.count} Houses."
puts "Created #{Student.count} Students."
puts "Created #{Teacher.count} Teachers."
puts "Created #{Appointment.count} Appointments."

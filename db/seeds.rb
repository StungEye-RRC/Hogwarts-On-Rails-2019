Student.destroy_all
Teacher.destroy_all
House.destroy_all

8.times do
  house = House.create(name: Faker::Movies::HarryPotter.unique.house,
                       points: Faker::Number.between(10, 90))

  number_of_students = rand(10..20)
  number_of_teachers = rand(4..8)

  number_of_students.times do
    house.students.create(name: Faker::Movies::HarryPotter.unique.character)
  end

  number_of_teachers.times do
    house.teachers.create(name: Faker::Movies::HarryPotter.unique.character)
  end
end

puts "Number of houses:   #{House.count}"
puts "Number of students: #{Student.count}"
puts "Number of teachers: #{Teacher.count}"
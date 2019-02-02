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

Page.create(title: 'About Us', content: "Hogwarts School of Witchcraft and Wizardry, shortened to Hogwarts, is a fictional British school of magic for students aged eleven to eighteen, and is the primary setting for the first six books in J.K. Rowling's Harry Potter series.", permalink: 'about-us')
Page.create(title: 'Contact', content: "Contact us by owl mail or by magic spell.", permalink: 'contact')

puts "Number of houses:   #{House.count}"
puts "Number of students: #{Student.count}"
puts "Number of teachers: #{Teacher.count}"
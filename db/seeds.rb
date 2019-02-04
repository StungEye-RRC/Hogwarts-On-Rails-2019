Appointment.destroy_all
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

# Method A
teachers = Teacher.all.sample(10)

# Method B
# teachers = Teacher.order(Arel.sql('random()')).limit(10)

# Method C
# teacher_offset = rand(Teacher.count - 10)
# teachers = Teacher.offset(teacher_offset).limit(10)

teachers.each do |teacher|
  student = Student.all.sample
  appointment_date = Faker::Time.forward(30, :morning)
  teacher.appointments.create(appointment_date: appointment_date, student: student)
end

10.times do
  student = Student.all.sample
  teacher = Teacher.all.sample
  appointment_date = Faker::Time.forward(30, :morning)
  Appointment.create(appointment_date: appointment_date, student: student, teacher: teacher)
end

Page.create(title: 'About Us', content: "Hogwarts School of Witchcraft and Wizardry, shortened to Hogwarts, is a fictional British school of magic for students aged eleven to eighteen, and is the primary setting for the first six books in J.K. Rowling's Harry Potter series.", permalink: 'about-us')
Page.create(title: 'Contact', content: "Contact us by owl mail or by magic spell.", permalink: 'contact')

puts "Number of houses:   #{House.count}"
puts "Number of students: #{Student.count}"
puts "Number of teachers: #{Teacher.count}"
puts "Number of appointments: #{Appointment.count}"

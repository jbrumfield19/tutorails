# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
    Student.create(name:Faker::Name.name,level:Faker::Educator.secondary_school)
end
10.times do
    Tutor.create(name:Faker::Name.name,level:Faker::Educator.secondary_school, bio:Faker::Movies::Ghostbusters.quote)
end
10.times do
    Subject.create(name:Faker::Educator.subject)
end

10.times do
    Location.create(name:Faker::Educator.campus)
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[['Shana', '+17037897272']].each do |name, phone_number|
  Developer.first_or_create!(name: name, phone_number: phone_number)
end

Event.create(start_date: '2019-03-11 10:00:00', end_date: '2019-03-11 15:00:00', text: 'deploy to staging' )
Event.create(start_date: '2019-03-18 10:00:00', end_date: '2019-03-18 15:00:00', text: 'deploy to prod' )

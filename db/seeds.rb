# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Chef.delete_all

10.times do
  user_chef = User.create(first_name: Faker::Name::female_first_name, last_name: Faker::Name::last_name, password: 'secret', email: Faker::Internet.email, chef_boolean: true)

  chef = Chef.new(nickname: Faker::Name.name, cuisine: Faker::Food.ethnic_category, description: Faker::GreekPhilosophers.quote, location: Faker::Nation.capital_city, price: Faker::Number.number(digits: 3))
  chef.user = user_chef
  chef.save
end

10.times do
  user = User.create(first_name: Faker::Name::female_first_name, last_name: Faker::Name::last_name, password: 'secret', email: Faker::Internet.email, chef_boolean: false)
end

puts "#{User.count} users created successfully"
puts "#{Chef.count} chefs created successfully"

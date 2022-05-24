# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Chef.delete_all
  User.create(first_name: 'Miguel', last_name: 'da Silva Santos', password: 'secret', email: 'secret@gmail.com', chef: true)

  Chef.create(nickname: 'bubbles', cuisine: 'italian', description: 'yummy', location: 'lesboa', price: 123, user_id: 1)

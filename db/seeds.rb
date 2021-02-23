# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Shoe.destroy_all
User.destroy_all

user = User.create!(first_name: "Jonas", last_name: "Mikael", email: "Jonas@example.com", password: "123456")
user2 = User.create!(first_name: "Bella", last_name: "Stad", email: "Bella@example.com", password: "123456")
user3 = User.create!(first_name: "Tom", last_name: "Bell", email: "Tom@example.com", password: "123456")

Shoe.create!(name: "Air Jordan 3000", size: 42, price: 300, brand: "Nike", location: "Berlin", year: 1988, user: user)
Shoe.create!(name: "Dunkin", size: 45, price: 280, brand: "New Balance", location: "Frankfurt", year: 1970, user: user2)
Shoe.create!(name: "Air Jordan 2567", size: 41, price: 350, brand: "Nike", location: "Stuttgart", year: 1972, user: user3)


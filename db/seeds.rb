# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Shoe.destroy_all
User.destroy_all
Booking.destroy_all

user = User.create!(first_name: "Jonas", last_name: "Mikael", email: "Jonas@example.com", password: "123456")
user2 = User.create!(first_name: "Bella", last_name: "Stad", email: "Bella@example.com", password: "123456")
user3 = User.create!(first_name: "Tom", last_name: "Bell", email: "Tom@example.com", password: "123456")

# <<<<<<< HEAD
file = URI.open('https://moneyinc.com/wp-content/uploads/2019/04/Nike-Air-Mag-Back-to-the-Future-2016.jpg')
shoe = Shoe.new(name: "back to the future", size: 42, price: 980, brand: "Nike", location: "Madrid", year: 1980, user: user2)
shoe.photo.attach(io: file, filename: 'nike_air_future.jpg', content_type: 'image/jpg')
shoe.save!

#TODO Change image and values because this one is not a shoe
# file2 = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
# shoe2 = Shoe.new(name: "Air Jordan 3000", size: 42, price: 300, brand: "Nike", location: "Berlin", year: 1988, user: user3)
# shoe2.photo.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
# shoe2.save!

file3 = URI.open('http://styleninja.de/wp-content/uploads/2019/01/off-white-jordan.png')
shoe3 = Shoe.new(name: "Air Jordan 1 High X", size: 41, price: 60, brand: "Nike", location: "Rosenheim", year: 1988, user: user2)
shoe3.photo.attach(io: file3, filename: 'Air-jordan-1-high-x.png', content_type: 'image/png')
shoe3.save!

# TODO change image because this one ihas too much whitespace
# file4 = URI.open('https://www.sailerstyle.com/out/pictures/generated/product/1/1500_1500_75/agl_damen_sneaker_offwhite_milk_he_d925551pgkv003b286_offwhite_milk_1409.jpg')
# shoe4 = Shoe.new(name: "AGL Lad", size: 37, price: 20, brand: "AGL", location: "Hamburg", year: 2008, user: user)
# shoe4.photo.attach(io: file4, filename: 'AGL-Lad.jpg', content_type: 'image/jpg')
# shoe4.save!

file5 = URI.open('https://www.footshop.cz/blog/wp-content/uploads/2020/01/13.jpg')
shoe5 = Shoe.new(name: "Jumpman", size: 41, price: 680, brand: "Jumpman", location: "Berlin", year: 2021, user: user)
shoe5.photo.attach(io: file5, filename: 'jumpman.jpg', content_type: 'image/jpg')
shoe5.save!

Booking.create!(start_date: "20200524", end_date: "20200624", confirmed: true, user: user, shoe: shoe5)
Booking.create!(start_date: "20200524", end_date: "20200624", confirmed: true, user: user, shoe: shoe3)

# shoe1 = Shoe.create!(name: "Air Jordan 3000", size: 42, price: 300, brand: "Nike", location: "Berlin", year: 1988, user: user)
# shoe2 = Shoe.create!(name: "Dunkin", size: 45, price: 280, brand: "New Balance", location: "Frankfurt", year: 1970, user: user2)
# shoe3 = Shoe.create!(name: "Air Jordan 2567", size: 41, price: 350, brand: "Nike", location: "Stuttgart", year: 1972, user: user3)

# Booking.create!(start_date: "20200524", end_date: "20200624", confirmed: true, user: user, shoe: shoe3)
# Booking.create!(start_date: "20200524", end_date: "20200624", confirmed: true, user: user, shoe: shoe2)
# >>>>>>> master

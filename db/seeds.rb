# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.create(make: "Ford", price: 1000.00)
Car.create(make: "Tesla", price: 10000.00)

Sub.destroy_all

Sub.create(name: "Javascript")
Sub.create(name: "Food")
Sub.create(name: "Flat Earth")

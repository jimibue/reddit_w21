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
# Topic.destroy_all don;t need this because dependent: :destroy in model

js = Sub.create(name: "Javascript")
food = Sub.create(name: "Food")
fe = Sub.create(name: "Flat Earth")

js.topics.create(name: "JS Functions", body: "all about functions")
js.topics.create(name: "JS Array", body: "all about arrays")

# could also create with our topic model (need sub_id)
# js.topics.create(name:'JS vars', body:'all about vars')
Topic.create(name: "JS vars", body: "all about vars", sub_id: js.id)

food.topics.create(name: "Mexican", body: "Probably the best")
food.topics.create(name: "Thai", body: "Probably the second best")

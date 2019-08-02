# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
100.times do
  city = City.create(city_name: Faker::Address.city)
  dogsitter = Dogsitter.new(name: Faker::Name.first_name, )
  dog = Dog.new(nom: Faker::Creature::Dog.name)
  dog.city = city
  dogsitter.city = city
  dog.save
  dogsitter.save
end
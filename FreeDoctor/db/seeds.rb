# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
100.times do
  city = City.create(name: Faker::Address.city)
  doctor = Doctor.new(first_name: Faker::Name.first_name,  last_name: Faker::Name.last_name)
  patient = Patient.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  doctor.city = city
  patient.city = city
  doctor.save
  patient.save
  appointment = Appointment.new
  appointment.doctor = doctor
  appointment.patient = patient
  appointment.save
end
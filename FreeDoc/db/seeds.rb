# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Doctor.destroy_all
Patient.destroy_all

Doctor.reset
Patient.reset

require 'faker'
5.times do |f|
  doctors = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: ["chirurgien", "dentiste", "podologue", "urologue", "psychologue", "gourou"].sample, zip_code: "69005")
  patients = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

1.times do |f|
a1 = Appointment.create(doctor: Doctor.find(1), patient: Patient.find(1), date: Faker::Time.forward(days: 10, period: :all)) 
end
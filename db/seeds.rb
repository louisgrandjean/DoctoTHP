# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

require 'faker'

c1 = City.create(city: "Paris")
c2 = City.create(city: "Lyon")
c3 = City.create(city: "Marseille")

d1 = Doctor.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, city_id: 2, zip_code: "75000")
d2 = Doctor.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, city_id: 1, zip_code: "69005")
d3 = Doctor.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, city_id: 1, zip_code: "69005")

p1 = Patient.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, city_id: 2)
p2 = Patient.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, city_id: 2)
p3 = Patient.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, city_id: 1)

a1 = Appointment.create(date: Faker::Time.forward(days: 10, period: :all), doctor: d1, patient: p1, city_id: 2)
a2 = Appointment.create(date: Faker::Time.forward(days: 10, period: :all), doctor: d2, patient: p3, city_id: 1)
a3 = Appointment.create(date: Faker::Time.forward(days: 10, period: :all), doctor: d3, patient: p3, city_id: 1)
a4 = Appointment.create(date: Faker::Time.forward(days: 10, period: :all), doctor: d1, patient: p2, city_id: 2)

Specialty.create(specialty: "Podologue")
Specialty.create(specialty: "Medecin")
Specialty.create(specialty: "Urologue")
Specialty.create(specialty: "Généraliste")
Specialty.create(specialty: "Gourou")

JoinTableSpeciality.create(specialty_id: 1, doctor_id: 1)
JoinTableSpeciality.create(specialty_id: 2, doctor_id: 1)
JoinTableSpeciality.create(specialty_id: 3, doctor_id: 1)
JoinTableSpeciality.create(specialty_id: 3, doctor_id: 2)
JoinTableSpeciality.create(specialty_id: 5, doctor_id: 3)

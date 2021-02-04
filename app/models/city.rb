class City < ApplicationRecord
  #link of City Class
  has_many :appointments
  has_many :doctors
  has_many :patients
end

class Specialty < ApplicationRecord
  #link of Specialty Class
  has_many :specialties
  has_many :doctors, through: :specialties
end

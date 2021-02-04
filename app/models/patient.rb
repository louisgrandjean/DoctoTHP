class Patient < ApplicationRecord
  #link of Patient Class
  has_many :appointments
  has_many :doctors, through: :appointments
end

class Appointment < ApplicationRecord
  #link of Appointment Class
  belongs_to :doctor
  belongs_to :patient
end

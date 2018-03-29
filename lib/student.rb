class Student < ActiveRecord::Base

  has_many :student_tacos
  has_many :tacos, through: :student_tacos


end

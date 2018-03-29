class Taco < ActiveRecord::Base

  has_many :student_tacos
  has_many :students, through: :student_tacos

end

class Student < ActiveRecord::Base

  has_many :taco_trucks
  has_many :tacos, through: :taco_trucks

end

class Student < ActiveRecord::Base

  has_many :taco_truck
  has_many :tacos, through: :taco_truck

end

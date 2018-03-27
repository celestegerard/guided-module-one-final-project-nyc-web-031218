class Taco < ActiveRecord::Base

  has_many :taco_truck
  has_many :students, through: :taco_truck

end

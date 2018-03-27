class TacoTruck < ActiveRecord::Base

  belongs_to :student
  belongs_to :taco

end

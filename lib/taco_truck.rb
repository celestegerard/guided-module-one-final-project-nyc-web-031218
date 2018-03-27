class TacoTruck < ActiveRecord::Base

  belongs_to :students
  belongs_to :tacos

end

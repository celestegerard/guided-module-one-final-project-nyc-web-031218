class AddColumnTacoTruck < ActiveRecord::Migration[4.2]

  def change
    add_column :taco_truck, :student_id, :integer
    add_column :taco_truck, :taco_id, :integer
  end

end

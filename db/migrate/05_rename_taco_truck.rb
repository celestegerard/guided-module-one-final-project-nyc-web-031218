class RenameTacoTruck < ActiveRecord::Migration[4.2]

  def change
    rename_table :taco_truck, :taco_trucks

  end

end

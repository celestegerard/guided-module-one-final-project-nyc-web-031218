class CreateTacoTruck < ActiveRecord::Migration[4.2]

  def change
    create_table :taco_truck do |t|
      t.string :name
    end
  end

end

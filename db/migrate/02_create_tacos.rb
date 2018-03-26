class CreateTacos < ActiveRecord::Migration[4.2]

  def change
  create_table :tacos do |t|
    t.string :kind
    end
  end
end

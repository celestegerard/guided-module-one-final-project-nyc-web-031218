class CreateStudentTacos < ActiveRecord::Migration[4.2]

  def change
    create_table :student_tacos do |t|
      t.string :name
      t.integer :student_id
      t.integer :taco_id
    end
  end

end

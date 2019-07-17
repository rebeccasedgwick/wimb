class CreateCourts < ActiveRecord::Migration[5.2]
  def change
    create_table :courts do |t|
      t.string :name
      t.integer :staff_total

      t.timestamps
    end
  end
end

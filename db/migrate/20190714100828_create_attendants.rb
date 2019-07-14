class CreateAttendants < ActiveRecord::Migration[5.2]
  def change
    create_table :attendants do |t|
      t.string :name
      t.string :court

      t.timestamps
    end
  end
end

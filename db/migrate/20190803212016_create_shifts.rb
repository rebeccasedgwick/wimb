class CreateShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :shifts do |t|
      t.bigint :worker_id
      t.bigint :staffing_id
      t.datetime :start_time
      t.datetime :end_time
      t.integer :duration
      t.timestamps
    end
  end
end

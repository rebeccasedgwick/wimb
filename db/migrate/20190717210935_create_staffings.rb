class CreateStaffings < ActiveRecord::Migration[5.2]
  def change
    create_table :staffings do |t|
      t.bigint :_worker_id
      t.bigint :_court_id
      t.timestamps
    end
  end
end

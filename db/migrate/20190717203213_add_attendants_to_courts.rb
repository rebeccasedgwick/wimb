class AddAttendantsToCourts < ActiveRecord::Migration[5.2]
  def change
    remove_column :attendants, :court, :string
    add_column :attendants, :court_id, :bigint
  end
end

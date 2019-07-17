class ChangeAttendantsToWorkers < ActiveRecord::Migration[5.2]
  def change
    rename_table :attendants, :workers
  end
end

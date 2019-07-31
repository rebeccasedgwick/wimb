class RemoveCourtIdFromWorkers < ActiveRecord::Migration[5.2]
  def change
    remove_column :workers, :court_id, :bigint
  end
end

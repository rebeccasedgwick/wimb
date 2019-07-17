class RenameStaffingsColumns < ActiveRecord::Migration[5.2]
  def change
    rename_column :staffings, :_worker_id, :worker_id
    rename_column :staffings, :_court_id, :court_id
  end
end

class AddStaffingsActive < ActiveRecord::Migration[5.2]
  def change
    add_column :staffings, :active, :boolean, default: false
  end
end

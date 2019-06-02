class AddStatusToLineid < ActiveRecord::Migration[5.2]
  def change
    add_column :lineids, :status, :integer
  end
end

class AddAgreeIdsToPloys < ActiveRecord::Migration
  def change
    add_column :ploys, :agree_ids, :integer
  end
end

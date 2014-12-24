class AddUserIdToPloys < ActiveRecord::Migration
  def change
    add_column :ploys, :user_id, :integer
  end
end

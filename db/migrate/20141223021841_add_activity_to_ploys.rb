class AddActivityToPloys < ActiveRecord::Migration
  def change
    add_column :ploys, :activity, :string
  end
end

class AddPreferredPlaceToPloys < ActiveRecord::Migration
  def change
    add_column :ploys, :preferred_place, :string
  end
end

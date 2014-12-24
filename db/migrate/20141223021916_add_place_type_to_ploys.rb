class AddPlaceTypeToPloys < ActiveRecord::Migration
  def change
    add_column :ploys, :place_type, :string
  end
end

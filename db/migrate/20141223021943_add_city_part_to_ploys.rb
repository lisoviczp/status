class AddCityPartToPloys < ActiveRecord::Migration
  def change
    add_column :ploys, :city_part, :string
  end
end

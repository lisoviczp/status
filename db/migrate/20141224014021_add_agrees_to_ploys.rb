class AddAgreesToPloys < ActiveRecord::Migration
  def change
    add_column :ploys, :agrees, :string
  end
end

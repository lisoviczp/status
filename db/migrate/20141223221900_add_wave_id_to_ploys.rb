class AddWaveIdToPloys < ActiveRecord::Migration
  def change
    add_column :ploys, :wave_id, :integer
  end
end

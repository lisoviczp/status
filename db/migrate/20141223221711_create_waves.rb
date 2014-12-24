class CreateWaves < ActiveRecord::Migration
  def change
    create_table :waves do |t|
      t.date :date
      t.string :city
      t.string :state
      t.boolean :permission_to_share

      t.timestamps
    end
  end
end

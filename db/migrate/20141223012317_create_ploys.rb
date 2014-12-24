class CreatePloys < ActiveRecord::Migration
  def change
    create_table :ploys do |t|
      t.date :date
      t.integer :num_of_people
      t.integer :desired_num_of_people
      t.string :mostly_or_all
      t.string :desired_mostly_or_all
      t.integer :min_age
      t.integer :max_age
      t.string :city
      t.string :state
      t.integer :zipcode

      t.timestamps
    end
  end
end

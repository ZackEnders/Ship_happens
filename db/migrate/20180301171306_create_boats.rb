class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.string :boat_name 
      t.string :location
      t.integer :capacity
      t.timestamps
    end
  end
end

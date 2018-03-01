class AddIndexToBoats < ActiveRecord::Migration[5.1]
  def change
  	add_index :boats, :boat_name, unique: true
  end
end

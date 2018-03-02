class CreateNewColumnForBoats < ActiveRecord::Migration[5.1]
  def change
    add_column :boats, :client_id, :integer

    
  end
end

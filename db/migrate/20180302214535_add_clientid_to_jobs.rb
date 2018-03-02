class AddClientidToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :client_id, :integer
  end
end

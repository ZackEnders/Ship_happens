class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :cargo_name
      t.string :cargo_description
      t.integer :cost
      t.integer :amount_of_c
      t.string :origin
      t.string :destination
      t.timestamps
    end
    add_index :jobs, :cargo_name, unique: true
  end
end

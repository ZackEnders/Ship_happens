class AddPaperclipToBoats < ActiveRecord::Migration[5.1]
  def change
  	add_attachment :boats, :image
  end
end

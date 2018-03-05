class Boat < ApplicationRecord
	belongs_to :client
	#paperclip info
	has_attached_file :image, styles: { small: "64x64", med: "350x200", large: '450x300' }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	validates :boat_name, uniqueness: true
	has_and_belongs_to_many :jobs
end

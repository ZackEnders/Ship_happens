class Job < ApplicationRecord
	belongs_to :client
	has_and_belongs_to_many :boats
	validates :cargo_name, uniqueness: true
end

class Job < ApplicationRecord
	has_and_belongs_to_many :boats
	validates :cargo_name, uniqueness: true
end

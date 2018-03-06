class Job < ApplicationRecord
	belongs_to :client
	has_and_belongs_to_many :boats
	validates :cargo_name, uniqueness: true
	validates :cargo_description, length: {minimum: 20 }
	validates :cost, numericality: {greater_than_or_equal_to: 100}
end

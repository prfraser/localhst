class Marker < ApplicationRecord
	validates :name, :address, presence: true

	belongs_to :tour
	belongs_to :user

	geocoded_by :address
	after_validation :geocode
end

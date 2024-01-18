class Event < ApplicationRecord
	# has_many :reservations
	# has_many :users, through: :reservations
	belongs_to :venue
	PAYMENT_TYPE = ["Cash", "G-Cash", "Bank-Transfer"]
	def to_s
		name
	end

	def venue_name
		self.venue.name
	end
end

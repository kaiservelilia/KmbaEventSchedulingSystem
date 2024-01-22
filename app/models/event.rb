class Event < ApplicationRecord
	# has_many :reservations
	# has_many :users, through: :reservations
	belongs_to :venue
	# validate :date_onwards
	PAYMENT_TYPE = ["Cash", "G-Cash", "Bank-Transfer"]

	def to_s
		name
	end

	def venue_name
		self.venue.name
	end

	# def date_onwards
	#     return if date.blank?
	#     	if date < Date.today
	#       		errors.add(:date, "Sorry Date is already past")
	#     end
 	# end

end

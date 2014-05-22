class Flat < ActiveRecord::Base
  has_many :photos
  belongs_to :user
  has_many :bookings

end

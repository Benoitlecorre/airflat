class Flat < ActiveRecord::Base
  has_many :photos
  belongs_to :user
  geocoded_by :address   # can also be an IP address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
end

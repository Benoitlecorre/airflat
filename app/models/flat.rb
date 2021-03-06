class Flat < ActiveRecord::Base
  has_many :photos
  belongs_to :user
  scope :unreleased, where(:released_at => nil)

  geocoded_by :address   # can also be an IP address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

end

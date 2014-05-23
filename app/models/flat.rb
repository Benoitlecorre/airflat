class Flat < ActiveRecord::Base
  has_many :photos
  belongs_to :user
  scope :unreleased, where(:released_at => nil)

end

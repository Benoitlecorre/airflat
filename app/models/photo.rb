class Photo < ActiveRecord::Base
  belongs_to :flat
  has_attached_file :file,

  styles: { medium: "500x300#", thumb: "100x100>" }

  validates_attachment_content_type :file, :content_type => /\Aimage\/.*\Z/

end

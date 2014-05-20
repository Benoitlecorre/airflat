class AddAttachmentPictureToFlats < ActiveRecord::Migration
  def self.up
    change_table :flats do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :flats, :picture
  end
end

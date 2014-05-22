class FixPhotoFileName < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :flat, index: true
      t.attachment :file
      t.timestamps
    end
  end
end

class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
      t.string :title
      t.text :description
      t.string :address
      t.integer :dayprice

      t.timestamps
    end
  end
end

class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
      t.string :title
      t.text :description
      t.string :address
      t.interger :day-price

      t.timestamps
    end
  end
end

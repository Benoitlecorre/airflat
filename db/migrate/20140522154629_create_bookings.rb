class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :start
      t.date :end
      t.references :user, index: true
      t.references :flat, index: true

      t.timestamps
    end
  end
end

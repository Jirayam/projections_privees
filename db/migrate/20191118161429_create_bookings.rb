class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :viewing, foreign_key: true
      t.integer :progress

      t.timestamps
    end
  end
end

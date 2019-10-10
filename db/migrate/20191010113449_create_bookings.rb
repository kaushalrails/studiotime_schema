class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user
      t.references :studio
      t.integer :status
      t.string :stripe_transaction_id
      t.decimal :subtotal
      t.decimal :studiotime_fee
      t.decimal :total_booking_price
      t.timestamps
    end
  end
end

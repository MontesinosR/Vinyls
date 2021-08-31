class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :vinyl, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :status
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end

class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :check_in
      t.date :check_out
      t.user_id :references
      t.space_id :references

      t.timestamps
    end
  end
end

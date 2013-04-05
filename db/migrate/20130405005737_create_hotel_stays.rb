class CreateHotelStays < ActiveRecord::Migration
  def change
    create_table :hotel_stays do |t|
      t.integer :hotel_id
      t.integer :member_id
      t.date :checkout_at

      t.timestamps
    end
  end
end

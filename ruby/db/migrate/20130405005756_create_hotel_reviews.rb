class CreateHotelReviews < ActiveRecord::Migration
  def change
    create_table :hotel_reviews do |t|
      t.integer :hotel_id
      t.integer :member_id
      t.integer :score

      t.timestamps
    end
  end
end

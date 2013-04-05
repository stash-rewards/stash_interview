class HotelReview < ActiveRecord::Base

  attr_accessible :hotel_id, :member_id, :score

  belongs_to :hotel
  belongs_to :member

  validates :hotel, presence: true
  validates :member, presence: true
  validates :score, inclusion: { in: 1..10 }

end

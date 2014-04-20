class Hotel < ActiveRecord::Base

  attr_accessible :name

  has_many :hotel_stays
  has_many :hotel_reviews

  validates :name, presence: true, uniqueness: true

end

FactoryGirl.define do

  sequence :name do |n|
    "Name #{n}"
  end

  factory :hotel do
    name { generate(:name) }
  end

  factory :member do
    name { generate(:name) }
  end

  factory :hotel_review do
    hotel
    member
    score 7
  end

  factory :hotel_stay do
    hotel
    member
    checkout_at Date.civil(2013, 2, 6)
  end

end

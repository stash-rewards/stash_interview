require 'spec_helper'

describe "hotel_reviews/show" do
  before(:each) do
    @hotel_review = assign(:hotel_review, stub_model(HotelReview,
      :hotel_id => 1,
      :member_id => 2,
      :score => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end

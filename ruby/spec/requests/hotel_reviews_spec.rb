require 'spec_helper'

describe "HotelReviews" do
  describe "GET /hotel_reviews" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get hotel_reviews_path
      response.status.should be(200)
    end
  end
end

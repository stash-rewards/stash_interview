require 'spec_helper'

describe "HotelStays" do
  describe "GET /hotel_stays" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get hotel_stays_path
      response.status.should be(200)
    end
  end
end

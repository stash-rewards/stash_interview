require 'spec_helper'

describe "hotel_stays/index" do
  before(:each) do
    assign(:hotel_stays, [
      stub_model(HotelStay,
        :hotel_id => 1,
        :member_id => 2
      ),
      stub_model(HotelStay,
        :hotel_id => 1,
        :member_id => 2
      )
    ])
  end

  it "renders a list of hotel_stays" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end

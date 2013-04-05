require 'spec_helper'

describe "hotel_stays/show" do
  before(:each) do
    @hotel_stay = assign(:hotel_stay, stub_model(HotelStay,
      :hotel_id => 1,
      :member_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end

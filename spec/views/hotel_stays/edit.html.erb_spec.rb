require 'spec_helper'

describe "hotel_stays/edit" do
  before(:each) do
    @hotel_stay = assign(:hotel_stay, stub_model(HotelStay,
      :hotel_id => 1,
      :member_id => 1
    ))
  end

  it "renders the edit hotel_stay form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hotel_stay_path(@hotel_stay), "post" do
      assert_select "input#hotel_stay_hotel_id[name=?]", "hotel_stay[hotel_id]"
      assert_select "input#hotel_stay_member_id[name=?]", "hotel_stay[member_id]"
    end
  end
end

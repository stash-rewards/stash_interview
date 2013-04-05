require 'spec_helper'

describe "hotel_reviews/new" do
  before(:each) do
    assign(:hotel_review, stub_model(HotelReview,
      :hotel_id => 1,
      :member_id => 1,
      :score => 1
    ).as_new_record)
  end

  it "renders new hotel_review form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hotel_reviews_path, "post" do
      assert_select "input#hotel_review_hotel_id[name=?]", "hotel_review[hotel_id]"
      assert_select "input#hotel_review_member_id[name=?]", "hotel_review[member_id]"
      assert_select "input#hotel_review_score[name=?]", "hotel_review[score]"
    end
  end
end

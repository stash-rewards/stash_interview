require "spec_helper"

describe HotelStaysController do
  describe "routing" do

    it "routes to #index" do
      get("/hotel_stays").should route_to("hotel_stays#index")
    end

    it "routes to #new" do
      get("/hotel_stays/new").should route_to("hotel_stays#new")
    end

    it "routes to #show" do
      get("/hotel_stays/1").should route_to("hotel_stays#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hotel_stays/1/edit").should route_to("hotel_stays#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hotel_stays").should route_to("hotel_stays#create")
    end

    it "routes to #update" do
      put("/hotel_stays/1").should route_to("hotel_stays#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hotel_stays/1").should route_to("hotel_stays#destroy", :id => "1")
    end

  end
end

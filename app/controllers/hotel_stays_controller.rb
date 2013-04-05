class HotelStaysController < ApplicationController
  # GET /hotel_stays
  # GET /hotel_stays.json
  def index
    @hotel_stays = HotelStay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hotel_stays }
    end
  end

  # GET /hotel_stays/1
  # GET /hotel_stays/1.json
  def show
    @hotel_stay = HotelStay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hotel_stay }
    end
  end

  # GET /hotel_stays/new
  # GET /hotel_stays/new.json
  def new
    @hotel_stay = HotelStay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hotel_stay }
    end
  end

  # GET /hotel_stays/1/edit
  def edit
    @hotel_stay = HotelStay.find(params[:id])
  end

  # POST /hotel_stays
  # POST /hotel_stays.json
  def create
    @hotel_stay = HotelStay.new(params[:hotel_stay])

    respond_to do |format|
      if @hotel_stay.save
        format.html { redirect_to @hotel_stay, notice: 'Hotel stay was successfully created.' }
        format.json { render json: @hotel_stay, status: :created, location: @hotel_stay }
      else
        format.html { render action: "new" }
        format.json { render json: @hotel_stay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hotel_stays/1
  # PUT /hotel_stays/1.json
  def update
    @hotel_stay = HotelStay.find(params[:id])

    respond_to do |format|
      if @hotel_stay.update_attributes(params[:hotel_stay])
        format.html { redirect_to @hotel_stay, notice: 'Hotel stay was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hotel_stay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotel_stays/1
  # DELETE /hotel_stays/1.json
  def destroy
    @hotel_stay = HotelStay.find(params[:id])
    @hotel_stay.destroy

    respond_to do |format|
      format.html { redirect_to hotel_stays_url }
      format.json { head :no_content }
    end
  end
end

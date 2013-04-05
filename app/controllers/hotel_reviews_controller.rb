class HotelReviewsController < ApplicationController
  # GET /hotel_reviews
  # GET /hotel_reviews.json
  def index
    @hotel_reviews = HotelReview.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hotel_reviews }
    end
  end

  # GET /hotel_reviews/1
  # GET /hotel_reviews/1.json
  def show
    @hotel_review = HotelReview.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hotel_review }
    end
  end

  # GET /hotel_reviews/new
  # GET /hotel_reviews/new.json
  def new
    @hotel_review = HotelReview.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hotel_review }
    end
  end

  # GET /hotel_reviews/1/edit
  def edit
    @hotel_review = HotelReview.find(params[:id])
  end

  # POST /hotel_reviews
  # POST /hotel_reviews.json
  def create
    @hotel_review = HotelReview.new(params[:hotel_review])

    respond_to do |format|
      if @hotel_review.save
        format.html { redirect_to @hotel_review, notice: 'Hotel review was successfully created.' }
        format.json { render json: @hotel_review, status: :created, location: @hotel_review }
      else
        format.html { render action: "new" }
        format.json { render json: @hotel_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hotel_reviews/1
  # PUT /hotel_reviews/1.json
  def update
    @hotel_review = HotelReview.find(params[:id])

    respond_to do |format|
      if @hotel_review.update_attributes(params[:hotel_review])
        format.html { redirect_to @hotel_review, notice: 'Hotel review was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hotel_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotel_reviews/1
  # DELETE /hotel_reviews/1.json
  def destroy
    @hotel_review = HotelReview.find(params[:id])
    @hotel_review.destroy

    respond_to do |format|
      format.html { redirect_to hotel_reviews_url }
      format.json { head :no_content }
    end
  end
end

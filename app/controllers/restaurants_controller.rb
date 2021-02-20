class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    respond_to do |format|
      format.html
      format.json { render json: { restaurants: @restaurants } }
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new  # <-- You need this now.
  end

  def restaurant_count
    @restaurants = Restaurant.all
    respond_to do |format|
      format.json { render json: { count: @restaurants.count } }
    end
  end
end

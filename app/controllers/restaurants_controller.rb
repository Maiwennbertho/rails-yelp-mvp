class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new_review
    @restaurant = Restaurant.new(params[:id])
    @review = Review.new
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end

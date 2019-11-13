class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show]

  def index
    query = params[:search]
    @restaurants = Restaurant.all
    @restaurants = Restaurant.where(("category LIKE '%#{query}%'")) if query
  end

  def show
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end

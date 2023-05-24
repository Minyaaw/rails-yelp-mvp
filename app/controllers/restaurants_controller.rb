class RestaurantsController < ApplicationController
  before_action :set_task, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurants = Restaurant.new
  end

  def create
    @restaurants = Restaurant.new(restaurant_params)
    @restaurants.save
    redirect_to restaurant_path(@restaurant)
  end

  def show
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end

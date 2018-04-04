class CitiesController < ApplicationController
  protect_from_forgery

  def new
    @city = City.new
  end

  def create
    city = City.create city_params
    redirect_to city_path(city.id)

  end

  def index

  end

  def show
    @city = City.find params[:id]
  end

  def edit
    @city = City.find params[:id]
  end

  def city_params
    params.require(:city).permit(:name, :rank)
  end

end

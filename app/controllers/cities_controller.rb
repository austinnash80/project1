class CitiesController < ApplicationController
  protect_from_forgery



  def create
    city = City.create city_params
    redirect_to city_path(city.id)

  end

  def index

  end

  def show
    @city = City.find params[:id]


  end

  def update
      city = City.find params[:id]
      city.update city_params
      redirect_to city_path(city.id)
    end

  def city_params
    params.require(:city).permit(:name, :rank)
  end


end

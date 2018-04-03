class CitiesController < ApplicationController
  def new
    @city = Cities.new
  end

  def create
    @city = Cities.create city_params
    redirect_to city_path(city.id)

  end

  def index

  end
end

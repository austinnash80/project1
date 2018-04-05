class CitiesController < ApplicationController
  protect_from_forgery



  def create
    @city = City.create city_params
    # @city = city.id
    # @user = @current_user.id
    if @city.save
      @current_user.cities << @city
      redirect_to city_path(@city.id)

    else
      redirect_to root_path # it worked!
    end
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
    params.require(:city).permit(:name)
  end


end

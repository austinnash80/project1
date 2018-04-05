class ActivitiesController < ApplicationController
  protect_from_forgery


  def create
    @activity = Activity.create activity_params

    # @current_city = City.find_by :id => session[:city_id]
    # if @activity.save
    #   @city.activities << @activity  # need current city
    #   redirect_to activity_path(@activity.id)
    #
    # else
    #   redirect_to root_path
    # end
    redirect_to activity_path(@activity.id)
  end


  def show
    @activity = Activity.find params[:id]
  end

  def update
      activity = Activity.find params[:id]
      activity.update activity_params
      redirect_to activity_path(activity.id)
    end

  def destroy
    activity = Activity.find params[:id]
    activity.destroy
    redirect_to activity_path
  end

  def activity_params
    params.require(:activity).permit(:event, :city_id)
  end

end

class ActivitiesController < ApplicationController
  protect_from_forgery


  def create
    activity = Activity.create activity_params
    redirect_to activity_path(activity.id)
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
    params.require(:activity).permit(:event)
  end

end

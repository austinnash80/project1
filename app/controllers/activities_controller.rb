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

  def activity_params
    params.require(:activity).permit(:activity1, :activity2)
  end

end

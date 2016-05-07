class ItineraryActivitiesController < ApplicationController

  def new
    @activity = Activity.new(activity_params)
    @itinerary = Itinerary.find_by_id(params[:itinerary_id])
    @activity.itinerary_id = @itinerary.id
  end

  def create
    itinerary = Itinerary.find_by_id(params[:itinerary_id])
    @activity = Activity.create(activity_params)
    itinerary.activities << (@activity)
    if @activity.save
      redirect_to itinerary_path(params[:itinerary_id])
    else
      redirect_to new_itinerary_activity(params[:itinerary_id])
    end
  end

  def edit
    @activity = Activity.find_by_id(params[:activity_id])
    @itinerary = Itinerary.find_by_id(params[:itinerary_id])
    @activity.itinerary_id = @itinerary.id
  end

  def update
    @activity = Activity.find_by_id(params[:activity_id])
    if @activity.update(activity_params)
      redirect_to itinerary_path(params[:itinerary_id])
    else
      redirect_to new_itinerary_activity(params[:itinerary_id])
    end
  end

  def destroy
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :desc, :location, :duration, :img)
  end

end

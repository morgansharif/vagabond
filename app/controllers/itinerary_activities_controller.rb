class ItineraryActivitiesController < ApplicationController

  def new
    @itinerary = Itinerary.find_by_id(params[:itinerary_id])
    @activity = Activity.new
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
    @activity = Activity.find_by_id(params[:id])
    render :edit
  end

  def update
    @activity = Activity.find_by_id(params[:id])

  end

  def destroy
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :desc, :location, :duration, :img)
  end

end

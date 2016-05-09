class ItineraryActivitiesController < ApplicationController

  def new
    logged_in?
    @itinerary = Itinerary.find_by_id(params[:itinerary_id])
    @activity = Activity.new
  end

  def create
    itinerary = Itinerary.find_by_id(params[:itinerary_id])
    if allowed?(itinerary.user_id)
      @activity = Activity.create(activity_params)
      itinerary.activities << (@activity)
      if @activity.save
        redirect_to itinerary_path(params[:itinerary_id])
      else
        flash.now[:error] = @activity.errors.full_messages.join(" , ")
      end
    else
      redirect_to itinerary_path(itinerary)
    end
  end

  def edit
    logged_in?
    @activity = Activity.find_by_id(params[:activity_id])
  end

  def update
    @activity = Activity.find_by_id(params[:activity_id])
    itinerary = Itinerary.find_by_id(params[:itinerary_id])
    if allowed?(itinerary.user_id) && @activity.update(activity_params)
      redirect_to itinerary_path(params[:itinerary_id])
    else
      redirect_to itinerary_path(params[:itinerary_id])
    end
  end

  def destroy
    itinerary = Itinerary.find_by_id(params[:itinerary_id])
    if  Activity.find_by_id(params[:activity_id]).destroy
      redirect_to itinerary_path(params[:itinerary_id])
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :desc, :location, :duration, :img)
  end

end

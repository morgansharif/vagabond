class ItineraryActivitiesController < ApplicationController

  def new
    @activity = Activity.new
    @itinerary = Itinerary.find_by_id(params[:itinerary_id])
    render :new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.itinerary_id = current_user.id
    if @activity.save
    redirect_to itinerary_path(@activity.itinerary_id)
    else
      redirect_to new_activity_path
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
    params.require(:activity).permit(:name, :desc, :location, :duration, :img, :itinerary_id)
  end

end

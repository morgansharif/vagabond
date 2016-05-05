class ItinerariesController < ApplicationController
  # def index
  #   @itineraries = Itinerary.all
  #   render :index
  # end

  def new
    @itinerary = Itinerary.new
    render :new
  end

  def create
    @itinerary = Itinerary.new(itinerary_params)
    @itinerary.user_id = current_user.id
    if @itinerary.create
    redirect_to user_path
    else
      redirect_to new_itinerary_path
    end
  end

  def edit
    @itinerary = Itinerary.find_by_id(params[:id])
    render :edit
  end

  def update
    @itinerary = Itinerary.find_by_id(params[:id])
    if @itinerary.update(itinerary_params)
      redirect_to itinerary_path
    else
      render :edit
    end
  end

  def show
    @itinerary = Itinerary.find_by(params[:id])
    @itinerary.user_id = current_user.id
    render :show
  end

  def destroy
    @itinerary = Itinerary.find_by(params[:id])
    @itinerary.destroy
    redirect_to user_path
  end

  private

  def itinerary_params
    params.require(:itinerary).permit(:name, :desc, :city_id, :duration)
  end
end

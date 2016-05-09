class ItinerariesController < ApplicationController

  def new
    logged_in?
    @itinerary = Itinerary.new
  end

  def create
    @itinerary = Itinerary.new(itinerary_params)
    @itinerary.user_id = current_user.id
    if @itinerary.save
      redirect_to user_path(@itinerary.user_id)
    else
      flash.now[:error] = @itinerary.errors.full_messages.join(" , ")
      render :new
    end
  end

  def edit
    logged_in?
    @itinerary = Itinerary.find_by_id(params[:id])
  end

  def update
    @itinerary = Itinerary.find_by_id(params[:id])
    if allowed?(@itinerary.user_id)
      if @itinerary.update(itinerary_params)
        redirect_to itinerary_path
      else
        flash[:error] = @itinerary.errors.full_messages.join(" , ")
        render :edit
      end
    else
      redirect_to itinerary_path
    end
  end

  def show
    @itinerary = Itinerary.find_by_id(params[:id])
    render :show
  end

  def destroy
    @itinerary = Itinerary.find_by_id(params[:id])
    user_id = @itinerary.user_id
    @itinerary.destroy
    flash[:notice] = "Itinerary successfully deleted"
    redirect_to user_path(user_id)
  end

  private

  def itinerary_params
    params.require(:itinerary).permit(:name, :desc, :city_id, :duration)
  end
end

class CitiesController < ApplicationController
  #friendlyId allows urls to be shown as city name, instead of id
  def show
    @city = City.friendly.find(params[:id])
  end
end

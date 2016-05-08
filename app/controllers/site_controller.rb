class SiteController < ApplicationController

  def index
    @cities = City.all
    render :index
  end

end

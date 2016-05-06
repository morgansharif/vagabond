class AddCityReferenceToItineraries < ActiveRecord::Migration
  def change
    add_reference :itineraries, :city, index: true, foreign_key: true
  end
end

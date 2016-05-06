class AddItineraryReferenceToActivities < ActiveRecord::Migration
  def change
    add_reference :activities, :itinerary, index: true, foreign_key: true
  end
end

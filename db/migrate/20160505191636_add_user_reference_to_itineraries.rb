class AddUserReferenceToItineraries < ActiveRecord::Migration
  def change
    add_reference :itineraries, :user, index: true, foreign_key: true
  end
end

class AddDurationToItineraries < ActiveRecord::Migration
  def change
    add_column :itineraries, :duration, :integer
  end
end

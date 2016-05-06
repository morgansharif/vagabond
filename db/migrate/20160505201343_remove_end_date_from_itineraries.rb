class RemoveEndDateFromItineraries < ActiveRecord::Migration
  def change
    remove_column :itineraries, :end_date, :string
  end
end

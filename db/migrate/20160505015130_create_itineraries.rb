class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.string :name
      t.string :desc
      t.string :start_date
      t.string :end_date

      t.timestamps null: false
    end
  end
end

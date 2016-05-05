class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :location
      t.string :duration
      t.string :img
      t.string :desc
      t.string :name

      t.timestamps null: false
    end
  end
end

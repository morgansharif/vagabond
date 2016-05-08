class Activity < ActiveRecord::Base
  belongs_to :itinerary

  validates :name, :desc, :duration, :location,
    presence: true

  validates :desc,
    length: {maximum: 255}

  validates :duration,
    numericality: true

end

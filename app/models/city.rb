class City < ActiveRecord::Base
  has_many :itineraries
end

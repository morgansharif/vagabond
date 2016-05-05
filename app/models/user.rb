class User < ActiveRecord::Base
  has_many :itineraries
end

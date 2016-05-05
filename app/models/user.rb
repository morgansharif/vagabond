class User < ActiveRecord::Base
  has_many :itineraries, :dependent => :delete_all
end

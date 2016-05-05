class Itinerary < ActiveRecord::Base
  belongs_to :city
  belongs_to :user
  has_many :activities, :dependent => :delete_all
end

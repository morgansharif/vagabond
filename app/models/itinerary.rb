class Itinerary < ActiveRecord::Base
  belongs_to :city
  belongs_to :user
  has_many :activities
  before_destroy :delete_activities

  def delete_activities
    self.activities.delete_all
  end
end

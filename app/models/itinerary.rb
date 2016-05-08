class Itinerary < ActiveRecord::Base
  belongs_to :city
  belongs_to :user
  has_many :activities
  before_destroy :delete_activities

  validates :name, :desc, :duration,
    presence: true

  validates :desc,
    length: {maximum: 255 }

  validates :duration,
    numericality: true

  def delete_activities
    self.activities.delete_all
  end
end

class City < ActiveRecord::Base
  has_many :itineraries

  extend FriendlyId
  friendly_id :name, use: :slugged

  def file_name
    "#{name.downcase.gsub(/\s/, '')}.jpg"
  end

end

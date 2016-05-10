class City < ActiveRecord::Base
  has_many :itineraries

  #extend FreindlyId methods to the user class (e.g. User.friendly.find(...))
  extend FriendlyId
  friendly_id :name, use: :slugged

  # interpolates cityname to link to synonomous .jpg file
  def file_name
    "#{name.downcase.gsub(/\s/, '')}.jpg"
  end

end

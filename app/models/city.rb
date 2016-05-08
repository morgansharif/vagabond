class City < ActiveRecord::Base
  has_many :itineraries

  def file_name
    "#{name.downcase.gsub(/\s/, '')}.jpg"
  end

end

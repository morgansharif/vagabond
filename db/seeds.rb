# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Activity.destroy_all
Itinerary.destroy_all
User.destroy_all
City.destroy_all


City.create(name: 'San Francisco', country: 'United States', img: 'http://falafel.com/Content/falafel-con-2014/images/banner.jpg')
City.create(name: 'Paris', country: 'France', img: 'http://1010uk.a.cdnify.io/sites/default/files/eiffel-tower-cameron-wears-BY-NC-banner.jpg')
City.create(name: 'Toronto', country: 'Canada', img: 'http://www.tsmedicalcentre.com/wp-content/uploads/2013/02/cropped-banner-toronto-cityscape01-900x300.jpg')
City.create(name: 'Miami', country: 'United States', img: 'http://www.lombardirealtor.com/wp-content/uploads/2013/08/miami_banner.jpg')

User.create(first_name: 'Billy', last_name: 'Gates', email: 'billg@hotmail.com', current_city: 'Oakland', img: 'http://stanlemmens.nl/wp/wp-content/uploads/2014/07/bill-gates-wealthiest-person.jpg', password: "123", email_confirmed: true)
User.create(first_name: 'Neil', last_name: 'Degrasse', email: 'neil@gmail.com', current_city: 'San Francisco', img: 'http://static5.businessinsider.com/image/51912b30ecad04253c000000/neil-degrasse-tyson-tells-us-why-star-trek-is-so-much-better-than-star-wars.jpg', password: "123", email_confirmed: true)
User.create(first_name: 'Oprah', last_name: 'Wins', email: 'oprah@geocities.com', current_city: 'San Francisco', img: 'http://49yzp92imhtx8radn224z7y1.wpengine.netdna-cdn.com/wp-content/uploads/2015/08/oprah.jpeg', password: "123", email_confirmed: true)
User.create(first_name: 'Sarah', last_name: 'Bayne', email: 'jbayne@gmail.com', current_city: 'Milbrae', img: 'https://support.plymouth.edu/kb_images/Yammer/default.jpeg', password: "123",email_confirmed: true)
User.create(first_name: 'Jason', last_name: 'Stroud', email: 'stroud.jason@gmail.com', current_city: 'San Jose', img: 'https://support.plymouth.edu/kb_images/Yammer/default.jpeg', password: "123",email_confirmed: true)
User.create(first_name: 'Cary', last_name: 'Webb', email: 'cary.d.webb.jason@gmail.com', current_city: 'Pleasanton', img: 'https://support.plymouth.edu/kb_images/Yammer/default.jpeg', password: "123",email_confirmed: true)

itinerary_list = [
  {name: 'Wine Tasting Weekend in Napa, California', desc: 'Spend 2 days tasting wine from different regions.', duration: 2},
  {name: 'Bar Crawl', desc: 'Exploring neigborhood bars, trying out local microbrews.', duration: 1},
  {name: 'Camping Trip', desc: 'Hike Mt. Diablo this weekend! Get your hiking poles ready!', duration: 1},
  {name: 'Monterey Weekend', desc: 'Bike around the country side.', duration: 3},
  {name: 'Foodies Weekend', desc: 'Food food food and more food! Spend the day trying local restaurants.', duration: 1}
]

activities_list = [
  {name: 'Brunch', desc: 'Brunch at Brendas Soul Food.', location: 'Somewhere', duration: 3, img: 'http://www.blackcreekhunting.com/Images/deer200.jpg'},
  {name: 'Aquarium', desc: 'Visit the Aquarium to see latest exhibits.', location: 'VHS chillwave', duration: 1, img: 'https://qph.is.quoracdn.net/main-thumb-t-1858-200-CZQybOyeYTTRiQIO09I14qGGIhExMqgO.jpeg'},
  {name: 'Boardwalk', desc: 'Stroll along the boardwalk.', location: 'Place', duration: 2, img: 'http://religionquestions.org/wp-content/uploads/2015/11/concert_crowd-wallpaper-1280x768-200x200.jpg'},
  {name: 'Napa Tour Bus ', desc: 'Party bus to local wineries', location: 'Place', duration: 2, img: 'http://sowefwf.com/wp-content/uploads/2014/02/wine.png'},
  {name: 'Hiking Trails', desc: 'Hike the Forest Trail.', location: 'Place', duration: 2, img: 'http://www.central-flachau.com/typo3temp/pics/8158750a60.jpg'},
]


#
User.all.each do |user|
  City.all.each do |city|
    itinerary_list.each do |itinerary|
      i = Itinerary.create(itinerary)

      # p user.first_name
      # p user.itineraries.count
      user.itineraries << i
      city.itineraries << i
      activities_list.each do |activity|
        a= Activity.create(activity)
        i.activities << a
      end
    end
  end
end

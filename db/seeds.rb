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

sanfran = City.create(
  name: 'San Francisco',
  country: 'United States',
  img: 'sanfrancisco.jpg'
)

paris = City.create(
  name: 'Paris',
  country: 'France',
  img: 'paris.jpg'
)

toronto = City.create(
  name: 'Toronto',
  country: 'Canada',
  img: 'toronto.jpg'
)

miami = City.create(
  name: 'Miami',
  country: 'United States',
  img: 'miami.jpg'
)

sarah = User.create(
  first_name: 'Sarah',
  last_name: 'Jones',
  email: 'sarahjones@hotmail.com',
  current_city: 'Oakland',
  img: 'http://lorempixel.com/200/200/nightlife/4/',
  password: "123",
  email_confirmed: true
)

billy = User.create(
  first_name: 'Billy',
  last_name: 'Smith',
  email: 'billysmith@hotmail.com',
  current_city: 'San Francisco',
  img: 'http://lorempixel.com/200/200/sports/5',
  password: "123",
  email_confirmed: true
)

john = User.create(
  first_name: 'John',
  last_name: 'ONeil',
  email: 'johnoneil@hotmail.com',
  current_city: 'Paris',
  img: 'http://lorempixel.com/200/200/sports/2',
  password: "123",
  email_confirmed: true
)

bobby = User.create(
  first_name: 'Bobby',
  last_name: 'Johnson',
  email: 'bobbyjohnson@hotmail.com',
  current_city: 'Toronto',
  img: 'http://lorempixel.com/200/200/sports/1',
  password: "123",
  email_confirmed: true
)

maria = User.create(
  first_name: 'Maria',
  last_name: 'Garcia',
  email: 'mariagarcia@hotmail.com',
  current_city: 'Miami',
  img: 'http://lorempixel.com/200/200/sports/9/',
  password: "123",
  email_confirmed: true
)

# City.create(name: 'San Francisco', country: 'United States', img: 'http://falafel.com/Content/falafel-con-2014/images/banner.jpg')
# City.create(name: 'Paris', country: 'France', img: 'http://1010uk.a.cdnify.io/sites/default/files/eiffel-tower-cameron-wears-BY-NC-banner.jpg')
# City.create(name: 'Toronto', country: 'Canada', img: 'http://www.tsmedicalcentre.com/wp-content/uploads/2013/02/cropped-banner-toronto-cityscape01-900x300.jpg')
# City.create(name: 'Miami', country: 'United States', img: 'http://www.lombardirealtor.com/wp-content/uploads/2013/08/miami_banner.jpg')

# User.create(first_name: 'Billy', last_name: 'Gates', email: 'billg@hotmail.com', current_city: 'Oakland', img: 'http://stanlemmens.nl/wp/wp-content/uploads/2014/07/bill-gates-wealthiest-person.jpg', password: "123", email_confirmed: true)
# User.create(first_name: 'Neil', last_name: 'Degrasse', email: 'neil@gmail.com', current_city: 'San Francisco', img: 'http://static5.businessinsider.com/image/51912b30ecad04253c000000/neil-degrasse-tyson-tells-us-why-star-trek-is-so-much-better-than-star-wars.jpg', password: "123", email_confirmed: true)
# User.create(first_name: 'Oprah', last_name: 'Wins', email: 'oprah@geocities.com', current_city: 'San Francisco', img: 'http://49yzp92imhtx8radn224z7y1.wpengine.netdna-cdn.com/wp-content/uploads/2015/08/oprah.jpeg', password: "123", email_confirmed: true)
# User.create(first_name: 'O', last_name: 'Bama', email: 'bama@gmail.com', current_city: 'Milbrae', img: 'http://a5.files.biography.com/image/upload/c_fit,cs_srgb,dpr_1.0,h_1200,q_80,w_1200/MTE4MDAzNDEwNzg5ODI4MTEw.jpg', password: "123",email_confirmed: true)
# User.create(first_name: 'Mr.', last_name: 'Bean', email: 'bean@gmail.com', current_city: 'San Jose', img: 'https://s-media-cache-ak0.pinimg.com/736x/70/b6/6d/70b66d7968e7f6578d315d564781fed8.jpg', password: "123",email_confirmed: true)
# User.create(first_name: 'Cary', last_name: 'Webb', email: 'cary.d.webb.jason@gmail.com', current_city: 'Pleasanton', img: 'https://support.plymouth.edu/kb_images/Yammer/default.jpeg', password: "123",email_confirmed: true)

napa = Itinerary.create(
  name: 'Wine Tasting Weekend in Napa',
  desc: 'More than 400 wineries dot the fertile soils of Napa Valley, one of the world’s premier viticultural regions. Spend the weekend wine tasting your way around some of the best wineries in the world.',
  duration: 3,
  city_id: sanfran.id,
  user_id: billy.id
)

dinner = Activity.create(
  name: 'Dinner',
  desc: 'Enjoy a gourmet fine dining experience at French Laundry with world-renowned Chef Thomas Keller.',
  location: 'French Laundry',
  duration: 3,
  img: 'french.jpg',
  itinerary_id: napa.id
)

hotspring = Activity.create(
  name: 'Hot Springs',
  desc: 'Enjoy maximum relaxation at the Calistoga Hot Springs with mud baths, and massage services.',
  location: 'Calistoga Spa Hot Springs',
  duration: 4,
  img: 'hot.jpg',
  itinerary_id: napa.id
)
vineyards = Activity.create(
  name: 'Vineyards',
  desc: 'Napa Valleys oldest continuously operating winery. Come enjoy our wide diversity of award-winning wines.',
  location: 'Beringer Vineyards',
  duration: 2,
  img: 'Berginer.jpg',
  itinerary_id: napa.id
)



carmel = Itinerary.create(
  name: 'Romantic Weekend in Carmel-by-the-Sea',
  desc: 'Enjoy a romantic weekend getaway at the world-renowned Carmel-by-the-Sea. Rated a top-10 destination in the U.S. year after year, Carmel-by-the-Sea is an amazing, European-style village nestled above a picturesque white-sand beach.',
  duration: 2,
  city_id: sanfran.id,
  user_id: sarah.id
)

brunch = Activity.create(
  name: 'Brunch',
  desc: 'Enjoy a delicious brunch at Katys Place. Choose from benedicts, burgers & more in a cozy space with chandeliers & diner-style tables, some outdoors.',
  location: 'Katys Place',
  duration: 2,
  img: 'brunch.jpg',
  itinerary_id: carmel.id
)

art = Activity.create(
  name: 'Art Gallery',
  desc: 'Get cultural at Gallerie Amsterdam as it brings the world of art to you in both contemporary and classical styles, proudly displaying more than 65 of the finest known artists.',
  location: 'Gallerie Amsterdam',
  duration: 2,
  img: 'art.jpg',
  itinerary_id: carmel.id
)

spa = Activity.create(
  name: 'Spa',
  desc: 'Relax at Kush Day Spa with massage and skin care services.',
  location: 'Kush Day Spa',
  duration: 3,
  img: 'kush.jpg',
  itinerary_id: carmel.id
)

niagara = Itinerary.create(
  name: 'Family getaway to Niagara Falls',
  desc: 'A fun destination for the entire family. Stroll along the Niagara boardway, try your luck at the Fallsview Casino, or take the kids to Clifton Hill for some Maple fudge. No matter what age, theres something to do for the entire family.',
  duration: 2,
  city_id: toronto.id,
  user_id: maria.id
)

casino = Activity.create(
  name: 'Fallsview Casino',
  desc: 'Try your luck at the Fallsview Casino, the largest and most elegant gaming resort facility in Canada.',
  location: 'Fallsview Casino',
  duration: 2,
  img: 'fallsview.jpg',
  itinerary_id: niagara.id
)

falls = Activity.create(
  name: 'Journey Behind the Falls',
  desc: 'Experience the Falls up close and personal, with a unique view of the Falls from below and behind.',
  location: 'Niagara Falls',
  duration: 1,
  img: 'falls.jpg',
  itinerary_id: niagara.id
)
clifton = Activity.create(
  name: 'Clifton Hill',
  desc: 'Steps away from the mighty Niagara Falls, Clifton Hill known as the " Street of Fun" is vibrant with exciting attractions. A must for both kids and adults!',
  location: 'Clifton Hill',
  duration: 2,
  img: 'clifton.jpg',
  itinerary_id: niagara.id
)
pec = Itinerary.create(
  name: 'The Taste Trail of Prince Edward Country',
  desc: 'Indulge the inner foodie with a sampling of restaurants, wineries, farms and unique food producers.',
  duration: 3,
  city_id: toronto.id,
  user_id: bobby.id
)
winepec = Activity.create(
  name: 'Hillier Creek Estate',
  desc: 'You can easily spend more than 2 hours here. The winery and tasting bar are surrounded by long rows of lush mature vineyards.',
  location: 'Hillier Creek Estate',
  duration: 2,
  img: 'hillier.jpg',
  itinerary_id: pec.id
)
dinnerpec = Activity.create(
  name: 'East & Main Bistro',
  desc: 'Enjoy luxury comfort food with local seasonal ingredients expertly created by Chef Scott Kapitan. All pâté, pickles and preserves are homemade.',
  location: 'East & Main Bistro',
  duration: 2,
  img: 'dinnerpec.jpg',
  itinerary_id: pec.id
)
icecream = Activity.create(
  name: 'Slickers County Ice Cream',
  desc: 'Who doesnt like ice cream?  Slickers is an ice cream lovers dream. Peter and Anne create all natural artisan ice cream, made fresh daily in small batches by hand.',
  duration: 1,
  img: 'slickers.jpg',
  itinerary_id: pec.id
)


# itinerary_list = [
#   {name: 'Wine Tasting Weekend in Napa', desc: 'Spend 2 days tasting wine from different regions.', duration: 2},
#   {name: 'Romantic Weekend in Carmel-by-the-Sea', desc: 'Exploring neigborhood bars, trying out local microbrews.', duration: 1},
#   {name: 'Summitting Mt.Whitney', desc: 'Hike Mt. Diablo this weekend! Get your hiking poles ready!', duration: 1},
#   {name: 'Monterey Weekend', desc: 'Bike around the country side.', duration: 3},
#   {name: 'Foodies Weekend', desc: 'Food food food and more food! Spend the day trying local restaurants.', duration: 1}
# ]

# activities_list = [
#   {name: 'Brunch', desc: 'Brunch at Brendas Soul Food.', location: 'Somewhere', duration: 3, img: 'http://www.blackcreekhunting.com/Images/deer200.jpg'},
#   {name: 'Aquarium', desc: 'Visit the Aquarium to see latest exhibits.', location: 'VHS chillwave', duration: 1, img: 'https://qph.is.quoracdn.net/main-thumb-t-1858-200-CZQybOyeYTTRiQIO09I14qGGIhExMqgO.jpeg'},
#   {name: 'Boardwalk', desc: 'Stroll along the boardwalk.', location: 'Place', duration: 2, img: 'http://religionquestions.org/wp-content/uploads/2015/11/concert_crowd-wallpaper-1280x768-200x200.jpg'},
#   {name: 'Napa Tour Bus ', desc: 'Party bus to local wineries', location: 'Place', duration: 2, img: 'http://sowefwf.com/wp-content/uploads/2014/02/wine.png'},
#   {name: 'Hiking Trails', desc: 'Hike the Forest Trail.', location: 'Place', duration: 2, img: 'http://www.central-flachau.com/typo3temp/pics/8158750a60.jpg'},
# ]


#
# User.all.each do |user|
#   City.all.each do |city|
#     itinerary_list.each do |itinerary|
#       i = Itinerary.create(itinerary)
#
#       # p user.first_name
#       # p user.itineraries.count
#       user.itineraries << i
#       city.itineraries << i
#       activities_list.each do |activity|
#         a= Activity.create(activity)
#         i.activities << a
#       end
#     end
#   end
# end

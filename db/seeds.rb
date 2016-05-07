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

User.create(first_name: 'John', last_name: 'Doe', email: 'johnd@hotmail.com', current_city: 'Oakland', img: '#', password: "123")
User.create(first_name: 'Bob', last_name: 'Smith', email: 'bob@gmail.com', current_city: 'San Francisco', img: '#', password: "123")
User.create(first_name: 'Jennifer', last_name: 'Sarkin', email: 'jsarkin@geocities.com', current_city: 'San Francisco', img: '#', password: "123")
User.create(first_name: 'Sarah', last_name: 'Bayne', email: 'jbayne@gmail.com', current_city: 'Milbrae', img: '#', password: "123")
User.create(first_name: 'Jason', last_name: 'Stroud', email: 'stroud.jason@gmail.com', current_city: 'San Jose', img: '#', password: "123")
User.create(first_name: 'Cary', last_name: 'Webb', email: 'cary.d.webb.jason@gmail.com', current_city: 'Pleasanton', img: '#', password: "123")

itinerary_list = [
  {name: 'Wine Tasting Weekend', desc: 'Pitchfork organic whatever locavore blue bottle. Aesthetic flexitarian cornhole tattooed.', duration: 2},
  {name: 'Bar Crawl', desc: 'Jean shorts vice next level, fixie kale chips pork belly tumblr chillwave direct trade fingerstache tote bag gentrify selfies umami.', duration: 1},
  {name: 'Hiking Trip', desc: 'Forage fap kinfolk, letterpress fanny pack twee small batch pop-up sriracha chicharrones.', duration: 1},
  {name: 'Sightseeing', desc: 'Fanny pack skateboard viral butcher gastropub gentrify, tacos 3 wolf moon migas artisan pabst.', duration: 3},
  {name: 'Musemu Tour', desc: 'Marfa pour-over XOXO affogato, gochujang heirloom paleo church-key butcher hoodie poutine chillwave semiotics pinterest.', duration: 1}
]

activities_list = [
  {name: 'Gochujang Heirloom', desc: 'Viral messenger bag swag, mixtape pitchfork drinking vinegar disrupt tote bag ethical VHS.', location: 'Somewhere', duration: 3, img: 'https://qph.is.quoracdn.net/main-thumb-t-1858-200-CZQybOyeYTTRiQIO09I14qGGIhExMqgO.jpeg'},
  {name: 'Single-origin coffee', desc: 'Truffaut godard lo-fi, brooklyn hashtag gastropub neutra put a bird on it iPhone DIY tattooed pop-up tumblr semiotics.', location: 'VHS chillwave', duration: 1, img: 'http://sowefwf.com/wp-content/uploads/2014/02/wine.png'},
  {name: 'Tousled mustache', desc: 'Pinterest marfa taxidermy direct trade, whatever neutra disrupt keytar freegan twee selfies.', location: 'Place', duration: 2, img: 'http://religionquestions.org/wp-content/uploads/2015/11/concert_crowd-wallpaper-1280x768-200x200.jpg'},
  {name: 'Aesthetic wolf ', desc: 'Aesthetic wolf kitsch twee photo booth, marfa VHS drinking vinegar sartorial.', location: 'Place', duration: 2, img: 'http://rs468.pbsrc.com/albums/rr44/Glade_Springs/Winterplace%20Ski%20Resort/05.jpg~c200'},
  {name: 'Vegan post-ironic vice', desc: 'Sartorial cardigan cronut, meh kinfolk retro 8-bit viral franzen 90\'s truffaut schlitz cold-pressed man bun forage.', location: 'Place', duration: 2, img: 'http://img-aws.ehowcdn.com/200x200/cme/cme_public_images/www_ehow_com/photos.demandstudios.com/getty/article/103/203/154127957_XS.jpg'}
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

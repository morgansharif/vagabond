# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(first_name: 'John', last_name: 'Doe', email: 'john@doe.com', current_city: 'Oakland', img: '#')
Itinerary.create(name: 'Wine tasting', desc: 'Weekend in Napa', duration: '2 days')
City.create(name: 'San Francisco', country: 'United States', img: '#')
Activity.create(name: 'Winerary-1', desc: 'Has the best Pinot', location: 'Napa', duration: '1-hour', img: '#')

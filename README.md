# **Vagabond**

## **Project description:** Vagabond is a travel app that enables you to discover new places and get inspired through other people’s published itineraries. Vagabond also powers you to create itinerary of your own to plan your next weekend getaway.
**Heroku Link:** <http://murmuring-brook-27298.herokuapp.com/>

## **Technologies Used**

-Ruby 2.3.0p0
-Rails 4.2.6

## **System Dependencies (Gems):**

- bootstrap-sass, 3.2.0 (bootstrap)
- bootswatch-rails (bootstrap control)
- autoprefixer-rails (parase css & add vendor prefixes)
- data-confirm-modal (converts stock confirm box to bootstrap modal)
- truncate (sets character limit on string and truncates ending with trailing ellipses)
- time_ago_in_words, 0.1.1 (converts date to relative time)
- bcrpyt (encrypts passwords through digest)
- carrierwave, 0.11.2 (image upload)
- mini_magick, 4.5, 4.5.1 (image storing)
- fog-aws (amazon web service hosting)
- figaro (heroku hosting)
- Pry-byebug (debugging tool)
- Hirb (database visualization through rails console)
- friendly_id (prettyURL)

## **ERD:**
![ERD model](assets/images/erd.png "ERD model")

Wireframe:
![signin](assets/images/signin.png "signin")
![create-account](assets/images/create-account.png "create-account")
![dropdown-menu](assets/images/dropdown-menu.png "dropdown-menu")
![city-show](assets/images/city-show.png "city-show")
![itinerary-show](assets/images/itinerary-show.png "itinerary-show")
![user-show](assets/images/user-show.png "user-show")

## **Deployment Instructions:**

- Clone down repository
- Run bundle install
- Rake db: create
- Rake db: migrate
- Rake db: seed
- Run rails server

## **Planned Features:**

- Enable users to create itinerary in any city
- Upvote feature for most popular itineraries and sort by popularity
- More sorting options, such as activity types, locations, hashtags
- Add pretty users (prettyURL)

Please feel free to use a different markup language if you do not play to run
<tt>rake doc:app</tt>

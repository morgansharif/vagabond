Rails.application.routes.draw do

  # root route
  root 'site#index', as: :index

  # user routes
  get     'users/new', to: 'users#new', as: :new_user
  post    'users', to: 'users#create'
  get     'users/:id/edit', to: 'users#edit', as: :edit_user
  patch   'users/:id', to: 'users#update'
  get     'users/:id', to: 'users#show', as: :user
  delete  'users/:id', to: 'users#destroy'

  # itin routes
  # get  '/itineraries', to: 'itineraries#index', as: :itineraries
  get  '/itineraries/new', to: 'itineraries#new', as: :new_itinerary
  post '/itineraries', to: 'itineraries#create'
  get  '/itineraries/:id/edit', to: 'itineraries#edit', as: :edit_itinerary
  patch'/itineraries/:id', to: 'itineraries#update'
  get  '/itineraries/:id', to: 'itineraries#show', as: :itinerary
  delete '/itineraries/:id', to: 'itineraries#destroy'

  get    '/users/:user_id/itineraries/:itinerary_id/activities', to: 'activities#index', as: :user_itinerary_activities
  post   '/users/:user_id/itineraries/:itinerary_id/activities', to: 'activities#create'
  get    '/users/:user_id/itineraries/:itinerary_id/activities/new', to: 'activities#new', as: :new_user_itinerary_activity
  get    '/users/:user_id/itineraries/:itinerary_id/activities/:id/edit', to: 'activities#edit', as: :edit_user_itinerary_activity
  get    '/users/:user_id/itineraries/:itinerary_id/activities/:id', to: 'activities#show', as: :user_itinerary_activity
  patch  '/users/:user_id/itineraries/:itinerary_id/activities/:id', to: 'activities#update'
  put    '/users/:user_id/itineraries/:itinerary_id/activities/:id', to: 'activities#update'
  delete '/users/:user_id/itineraries/:itinerary_id/activities/:id', to: 'activities#destroy'

  # # user_itinerary routes
  # get    '/users/:id/itineraries', to: 'itineraries#index'  , as:   :user_itineraries
  # post   '/users/:id/itineraries', to:  'itineraries#create'
  # get    '/users/:id/itineraries/new', to: 'itineraries#new', as: :new_user_itinerary
  # get    '/users/:id/itineraries/:id/edit', to: 'itineraries#edit', as: :edit_user_itinerary
  # get    '/users/:id/itineraries/:id', to:'itineraries#show', as: :user_itinerary
  # patch  '/users/:id/itineraries/:id', to: 'itineraries#update'
  # put    '/users/:id/itineraries/:id', to:  'itineraries#update'
  # delete '/users/:id/itineraries/:id',  to: 'itineraries#destroy'

  # city routes
  get '/cities', to: 'cities#index', as: :cities
  post '/cities', to: 'cities#create'
  get '/cities/new', to: 'cities#new', as: :new_city
  get '/cities/:id/edit', to: 'cities#edit', as: :edit_city
  get '/cities/:id', to: 'cities#show', as: :city
  patch '/cities/:id', to: 'cities#update'
  put '/cities/:id', to: 'cities#update'
  delete '/cities/:id', to: 'cities#destroy'

  # activity routes
  get '/itineraries/:itinerary_id/activities/new', to: 'itinerary_activities#new', as: :new_itinerary_activity
  get '/itineraries/:itinerary_id/activities/:activity_id/edit', to: 'itinerary_activities#edit', as: :itinerary_activity
  post '/itineraries/:itinerary_id/activities', to: 'itinerary_activities#create'

 # # city_itinerary routes
 # get    '/cities/:id/itineraries', to: 'itineraries#index'  , as: :city_itineraries
 # post   '/cities/:id/itineraries', to:  'itineraries#create'
 # get    '/cities/:id/itineraries/new', to: 'itineraries#new', as: :new_city_itinerary
 # get    '/cities/:id/itineraries/:id/edit', to: 'itineraries#edit', as: :edit_city_itinerary
 # get    '/cities/:id/itineraries/:id', to:'itineraries#show', as: :city_itinerary
 # patch  '/cities/:id/itineraries/:id', to: 'itineraries#update'
 # put    '/cities/:id/itineraries/:id', to:  'itineraries#update'
 # delete '/cities/:id/itineraries/:id',  to: 'itineraries#destroy'

# sessions routes
get "/login", to: "sessions#new", as: :login
post "/sessions", to: "sessions#create"
get  "/logout", to: "sessions#destroy", as: :logout

end

# resources :users do
#   resources :itineraries do
#     resources :activities
# end
# end
#
#
# resources :cities do
# resources :itineraries do
# end
# end

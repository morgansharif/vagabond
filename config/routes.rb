Rails.application.routes.draw do

  root 'site#index'

  get  'users/new', to: 'users#new', as: :new_user
  post 'users', to: 'users#create'
  get  'users/:id/edit', to: 'users#edit', as: :edit_user
  patch'users/:id', to: 'users#update'
  get  'users/:id', to: 'users#show', as: :user

  # city routes
  get '/cities', to: 'cities#index', as: :cities
  post '/cities', to: 'cities#create'
  get '/cities/new', to: 'cities#new', as: :new_city
  get '/cities/:id/edit', to: 'cities#edit', as: :edit_city
  get '/cities/:id', to: 'cities#show', as: :city
  patch '/cities/:id', to: 'cities#update'
  put '/cities/:id', to: 'cities#update'
  delete '/cities/:id', to: 'cities#destroy'

 # city_itinerary routes
 get    '/cities/:id/itineraries', to: 'itineraries#index'  , as: :city_itineraries
 post   '/cities/:id/itineraries', to:  'itineraries#create'
 get    '/cities/:id/itineraries/new', to: 'itineraries#new', as: :new_city_itinerary
 get    '/cities/:id/itineraries/:id/edit', to: 'itineraries#edit', as: :edit_city_itinerary
 get    '/cities/:id/itineraries/:id', to:'itineraries#show', as: :city_itinerary
 patch  '/cities/:id/itineraries/:id', to: 'itineraries#update'
 put    '/cities/:id/itineraries/:id', to:  'itineraries#update'
 delete '/cities/:id/itineraries/:id',  to: 'itineraries#destroy'

# user_itinerary routes
get    '/users/:id/itineraries', to: 'itineraries#index'  , as:   :user_itineraries
post   '/users/:id/itineraries', to:  'itineraries#create'
get    '/users/:id/itineraries/new', to: 'itineraries#new', as: :new_user_itinerary
get    '/users/:id/itineraries/:id/edit', to: 'itineraries#edit', as: :edit_user_itinerary
get    '/users/:id/itineraries/:id', to:'itineraries#show', as: :user_itinerary
patch  '/users/:id/itineraries/:id', to: 'itineraries#update'
put    '/users/:id/itineraries/:id', to:  'itineraries#update'
delete '/users/:id/itineraries/:id',  to: 'itineraries#destroy'

# sessions routes
get "/login", to: "sessions#new", as: :login
post "/sessions", to: "sessions#create"
get  "/logout", to: "sessions#destroy"

end

#
#   resources :users do
#     resources :itineraries do
#       resources :activities
#   end
#  end
#
#
# resources :cities do
#   resources :itineraries do
# end
# end

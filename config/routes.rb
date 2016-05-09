Rails.application.routes.draw do

  #!~~~~~~~~~ ROOT ROUTE ~~~~~~~~!#
  root 'site#index', as: :index

  #!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ USER ROUTES ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!#
  # method    path                      controller#action           alias
  get         'users/new',              to: 'users#new',            as: :new_user
  post        'users',                  to: 'users#create'
  get         'users/:id/edit',         to: 'users#edit',           as: :edit_user
  patch       'users/:id',              to: 'users#update'
  get         'users/:id',              to: 'users#show',           as: :user
  delete      'users/:id',              to: 'users#destroy'

  #!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ITINERARY ROUTES ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!#
  # method    path                      controller#action           alias
  get         '/itineraries/new',       to: 'itineraries#new',      as: :new_itinerary
  post        '/itineraries',           to: 'itineraries#create'
  get         '/itineraries/:id/edit',  to: 'itineraries#edit',     as: :edit_itinerary
  patch       '/itineraries/:id',       to: 'itineraries#update'
  get         '/itineraries/:id',       to: 'itineraries#show',     as: :itinerary
  delete      '/itineraries/:id',       to: 'itineraries#destroy',  as: :destroy_itinerary

  #!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ CITY ROUTES ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!#
  # method    path                      controller#action           alias
  get         '/cities',                to: 'cities#index',         as: :cities
  post        '/cities',                to: 'cities#create'
  get         '/cities/new',            to: 'cities#new',           as: :new_city
  get         '/cities/:id/edit',       to: 'cities#edit',          as: :edit_city
  get         '/cities/:id',            to: 'cities#show',          as: :city
  patch       '/cities/:id',            to: 'cities#update'
  put         '/cities/:id',            to: 'cities#update'
  delete      '/cities/:id',            to: 'cities#destroy'

  #!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ SESSION ROUTES ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!#
  # method    path                      controller#action           alias
  get         '/login',                 to: 'sessions#new',         as: :login
  post        '/sessions',              to: 'sessions#create'
  get         '/logout',                to: 'sessions#destroy',      as: :logout

  #!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ACTIVITY ROUTES ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!#
  # method  path                                                       controller#action                   alias
  get       '/itineraries/:itinerary_id/activities/new',               to: 'itinerary_activities#new',     as: :new_itinerary_activity
  get       '/itineraries/:itinerary_id/activities/:activity_id/edit', to: 'itinerary_activities#edit',    as: :edit_itinerary_activity
  post      '/itineraries/:itinerary_id/activities',                   to: 'itinerary_activities#create'
  patch     '/itineraries/:itinerary_id/activities/:activity_id',      to: 'itinerary_activities#update'
  delete    '/itineraries/:itinerary_id/activities/:activity_id',      to: 'itinerary_activities#destroy', as: :destroy_itinerary_activity

  resources :users do
    member do
      get :confirm_email
    end
  end

end

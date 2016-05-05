Rails.application.routes.draw do

  get 'users/show'

  get 'users/create'

  get 'users/update'

  get 'users/delete'

  get 'users/new'

  get 'users/edit'

  root 'site#index'

  # User Routes
  #METHOD   #PATH                 #TO     #CONTROLLER#ACTION    #ALIAS
  get       'site/index'          =>      'site#index',         as: :index

  get       'users/new'           =>       'users#new',         as: :new_user
  post      'users'               =>       'users#create'

  get       'users/:id/edit'      =>       'users#edit',        as: :edit_user
  patch     'users/:id'           =>       'users#update'

  get       'users/:id'           =>       'users#show',        as: :user
end

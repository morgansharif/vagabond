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


end

Rails.application.routes.draw do

  root 'site#index'

  # User Routes
  #METHOD   #PATH                 #TO     #CONTROLLER#ACTION    #ALIAS
  get       'site/index'          =>      'site#index',         as: :index


end

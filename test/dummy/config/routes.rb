Rails.application.routes.draw do

  resources :users
  mount Galleriable::Engine => "/galleriable"
end

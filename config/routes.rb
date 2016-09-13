Galleriable::Engine.routes.draw do
  mount Galleriable::Engine => "/galleriable"
  resources :photos
  resources :galleries
  resources :slides
end

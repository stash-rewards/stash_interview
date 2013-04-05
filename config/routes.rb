Interview::Application.routes.draw do

  root :to => 'welcome#index'

  resources :hotels
  resources :members
  resources :hotel_stays
  resources :hotel_reviews

end

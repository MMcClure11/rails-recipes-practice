Rails.application.routes.draw do
  resources :recipes

  #get '/recipes', to: 'recipes#index'
  # HTTP verb "route", to: "controller#index"
  # get 'recipes/favorites', to: 'recipes#favorites', as: 'favorites'
  # as: 'favorites' is a url helper
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

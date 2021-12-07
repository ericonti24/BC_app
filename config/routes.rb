Rails.application.routes.draw do

  get '/' => 'sessions#welcome'
  resources :business_cards
  resources :users

  get '/auth/:provider/callback' => 'sessions#create' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'news#index'
  resources :news

  namespace :api do 
    get 'news', to: 'news#index'
    get 'courses', to: 'courses#index'
    get 'search', to: 'courses#search'
    get 'cities', to: 'cities#index'
    get 'filters', to: 'filters#index'
    post 'addUserEmail', to:'users#create'
  end
end
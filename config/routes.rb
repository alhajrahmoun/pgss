Rails.application.routes.draw do
  root 'news#index'
  resources :news

  namespace :api do 
    get 'news', to: 'news#index'
    get 'courses', to: 'courses#index'
    get 'search', to: 'courses#search'
    post 'addUserEmail', to:'users#create'
  end
end
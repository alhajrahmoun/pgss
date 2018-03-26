Rails.application.routes.draw do
  namespace :api do 
    get 'news', to: 'news#index'
    get 'courses', to: 'courses#index'
  end
end

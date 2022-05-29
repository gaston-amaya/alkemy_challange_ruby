Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users, skip: %i[registrations sessions passwords]
  devise_scope :user do
    post '/signup', to: 'registrations#create'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
  end
  # Defines the root path route ("/")
  # root "articles#index"
  resources :characters
  resources :movies
  resources :genres
  resources :movie_character

end

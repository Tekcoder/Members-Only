Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'posts#index'
  
  
  get '/login', to: 'sessions#new'
  delete '/logout', to: 'sessions#destroy'

  get '/register', to: 'users#new'
  post '/register', to: 'users#create'

  post 'login', to: 'sessions#create'

  resources :posts, only: [:new, :create, :index]

end

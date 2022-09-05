Rails.application.routes.draw do
  get 'users/profile'
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations",
  }
  get "/u/:id", to: "users#profile", as: "user"

  resources :posts do
    resources :comments
  end
  get '/about', to: 'pages#about'
  #get 'root', to: 'pages#home'
  #get 'pages/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :pages
  root "pages#home"
end

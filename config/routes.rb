Rails.application.routes.draw do
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: redirect('home')
  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
end

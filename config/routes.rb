Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check
  root to: 'pages#home'
  get 'about', to: 'pages#about'

  get 'blog', to: 'blogs#blog'
  get 'website', to: 'blogs#website'

  resources :projects, only: [:index]
  get 'venue', to: 'projects#venue'
  get 'pokemarket', to: 'projects#pokemarket'
  get 'thesis', to: 'projects#thesis'
  get 'roadaccident', to: 'projects#roadaccident'
  get 'tripquest', to: 'projects#tripquest'
  resources :services, only: [:index]

  resources :books, only: [:index]
  get 'search_books', to: 'books#search', as: 'search_books'
  get 'ikigai', to: 'books#ikigai'
  get 'nudge', to: 'books#nudge'
  get 'ferrari', to: 'books#ferrari'

  # Defines the root path route ("/")
  # root "posts#index"
end

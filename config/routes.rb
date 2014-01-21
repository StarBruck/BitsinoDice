Primedice::Application.routes.draw do
  
  devise_for :users, controllers: { sessions: 'sessions' }, skip: [ :registrations ]

  resources :users,    only: [ :create ]
  resources :bets,     only: [ :show, :create ]
  resources :cashouts, only: [ :create ]

  root :to => "home#index"
  
end

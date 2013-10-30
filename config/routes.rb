TaylorNatRailz::Application.routes.draw do
  root to: "users#index"
  resources :users, only: [:index, :new, :create, :show]
  resources :sessions, only: [:create, :destroy]
end

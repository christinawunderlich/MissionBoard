Rails.application.routes.draw do
  resources :todos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :create]
  resources :roles
  get '/enter' => 'board#enter', as: 'enter'
  get '/exit' => 'board#exit', as: 'exit'
  get '/board' => 'board#show', as: 'board'
  # resources :boards, only: [:index]
end

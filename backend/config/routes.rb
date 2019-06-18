Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users
resources :topics, only: [:index, :show]
resources :questions, only: [:index, :show]
resources :answers, only: [:index, :show]
end

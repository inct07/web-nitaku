Rails.application.routes.draw do
  resources :questions, only: [:index]

  root 'questions#index'
end

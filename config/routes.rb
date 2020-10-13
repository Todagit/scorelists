Rails.application.routes.draw do
  devise_for :users
  root to: "study_scores#index"
  resources :users
  resources :scores, only: [:index, :new]
  resources :study_scores, only: [:index, :new]
end

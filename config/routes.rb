Rails.application.routes.draw do
  devise_for :users
  root to: "scores#index"
  resources :users
  resources :scores, only: [:index, :new]
  resources :study_scores
  resources :toeic_scores

end

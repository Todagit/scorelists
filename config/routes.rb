Rails.application.routes.draw do
  devise_for :users
  root to: "scores#index"
  resources :users
  resources :scores, only: [:index, :new]
  resources :study_scores, only: [:index, :new, :create, :edit, :show]
  resources :toeic_scores

end

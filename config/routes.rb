Rails.application.routes.draw do
  devise_for :users
  root to: "study_scores#index"
  resources :users
  resources :scores, only: [:index, :new]
  resources :study_scores, only: [:index, :new, :create, :edit]

  resources :toeic_scores, only: [:index, :new, :create, :edit] do
    member do
      get 'new', to: 'toeic_scores#new'
    end
  end
  
end

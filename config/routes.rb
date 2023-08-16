Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show] do
    member do
      get 'restaurants/:id/reviews/new', to: 'reviews#new', as: :new_review
      post 'restaurants/:id/reviews', to: 'reviews#create'
    end
    resources :reviews, only: %i[new create]
  end
  root to: 'restaurants#index'
end

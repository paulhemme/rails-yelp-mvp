Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :new, :edit, :create] do
    resources :reviews, only: [:new, :create]
    # Neste
  end
  root to: 'restaurants#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

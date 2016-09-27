Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :categories
    resources :line_items
    resources :orders
    resources :products
    resources :roles

    root to: "users#index"
  end

  devise_for :users, :controllers => { registrations: 'users/registrations' }
  root "home#index"

  localized do
    resources "faqs", only: [:index]
    resources "guarantee", only: [:index]
  end
end

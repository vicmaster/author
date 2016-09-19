Author::Application.routes.draw do
  devise_for :users
  root "home#index"

  localized do
    resources "faqs", only: [:index]
    resources "guarantee", only: [:index]
  end
end

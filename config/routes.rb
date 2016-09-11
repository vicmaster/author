Author::Application.routes.draw do
  root "home#index"

  localized do
    resources "faqs", only: [:index]
    resources "guarantee", only: [:index]
  end
end

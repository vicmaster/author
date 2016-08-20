Author::Application.routes.draw do
  root "home#index"

  resources "faqs", only: [:index]
end

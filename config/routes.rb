Author::Application.routes.draw do
  root "home#index"
  resources "guarantee", only: [:index]
end

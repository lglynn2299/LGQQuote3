LGQQuotes3::Application.routes.draw do
  get "pages/home"

  get "pages/contact"

  get "pages/about"

  resources :clients

  resources :users

  resources :quick_quotes

root :to => "quick_quotes#index"
end

  
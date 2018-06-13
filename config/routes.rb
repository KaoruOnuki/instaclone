Rails.application.routes.draw do
  resources :blogs do
    post :confirm, on: :collection
  end
  get "/blogs", to: "blogs#index"

  resources :users
  post "/users/:id/edit(.:format)", to: "users#edit"

  get 'sessions/new'
  resources :sessions, only: [:new, :create, :destroy]

  resources :favorites, only: [:create, :destroy]

  mount LetterOpenerWeb::Engine, at: "/letter_opener"
end

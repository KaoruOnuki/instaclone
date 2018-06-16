Rails.application.routes.draw do
  root "blogs#top"
  resources :blogs do
    post :confirm, on: :collection
  end
  get "/blogs", to: "blogs#index"

  resources :users
  post "/users/:id/edit(.:format)", to: "users#edit"

  get 'sessions/new'
  resources :sessions, only: [:new, :create, :destroy]

  resources :favorites, only: [:create, :show, :destroy]

  mount LetterOpenerWeb::Engine, at: "/letter_opener"
end

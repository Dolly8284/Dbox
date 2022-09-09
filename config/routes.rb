Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :omniauth_callback => "users/omniauth_callbacks"}
  devise_scope :user do
    root to: "devise/sessions#new"
  end

  resources :posts
  resources :sharings

  get 'welcome', to: 'welcome#index'
  post 'new_sharing', to: 'sharing#new_shared'   
end
Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :omniauth_callback => "users/omniauth_callbacks"}
  devise_scope :user do
    root to: "devise/sessions#new"
  end

  resources :posts do
    member do
      resources :sharings
    end
  end

  # get 'sharing', to: 'sharing#index'
  get 'welcome', to: 'welcome#index'
end
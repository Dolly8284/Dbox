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
  
  get 'welcome', to: 'welcome#index'
  # get 'new_sharing', to: 'sharings#new_shared'
end
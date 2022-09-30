Rails.application.routes.draw do
  resources :posts
      devise_for :users, :controllers => {
    :omniauth_callback => "users/omniauth_callbacks"}
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  
  get 'welcome', to: 'welcome#index'
  resources :posts do
    member do
      resources :sharings
    end
  end  
end

Rails.application.routes.draw do
  devise_for :users
  root to: "comics#index"

  get 'comics/search', to: 'comics#search'
  resources :comics do
    collection do
      get 'search'
    end
  end
end

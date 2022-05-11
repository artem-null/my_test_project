Rails.application.routes.draw do
  root 'users#index'

  resources :users, shallow: true do
    resources :articles do
      resources :comments
    end
  end
end

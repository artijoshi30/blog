Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  #devise_for :users
    root "articles#index"
    resources :articles do
      resources :comments
    end
      resources :articles do
      resources :likes
    end
end

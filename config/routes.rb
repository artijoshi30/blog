Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users, ActiveAdmin::Devise.config
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions',
  #   registrations: 'users/registrations'
  # }

  #devise_for :users
    root "articles#index"
    resources :articles do
      resources :comments
    end
      resources :articles do
      resources :likes
    end
      resources :articles do
      resources :follows
    end
end

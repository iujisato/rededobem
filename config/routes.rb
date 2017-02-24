Rails.application.routes.draw do
  root to: redirect('users/sign_in')

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :events
end

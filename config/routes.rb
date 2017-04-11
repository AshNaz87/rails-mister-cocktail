Rails.application.routes.draw do
  root 'cocktails#home'
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
    resources :doses, only: [:destroy]
end

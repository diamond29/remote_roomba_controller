Rails.application.routes.draw do
  root 'roomba_actions#index'
  resources :roomba_actions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
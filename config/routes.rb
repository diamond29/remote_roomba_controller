Rails.application.routes.draw do
  root 'roomba_actions#index'

  scope('api', as: 'api') do
    resources :roomba_actions
    get 'status', to: 'roomba_status#index'
  end
end

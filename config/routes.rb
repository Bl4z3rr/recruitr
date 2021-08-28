Rails.application.routes.draw do
  get 'index', to: 'hr_representatives#index'
  resources :positions
  resources :candidates
  resources :recruiters
end

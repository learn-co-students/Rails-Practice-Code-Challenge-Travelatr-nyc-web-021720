Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bloggers, only: [:create,:show,:index,:new]
  resources :destinations, only: [:show]
  resources :posts , only:[:edit,:update,:show,:create,:new]
end

Rails.application.routes.draw do
  get 'cooks/index'
  root to: 'cooks#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

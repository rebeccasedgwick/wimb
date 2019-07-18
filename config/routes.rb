Rails.application.routes.draw do
  get 'main/index'
  root 'main#index'

  get 'court/index'
  resources :courts
  root 'court#index'
end

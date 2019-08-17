Rails.application.routes.draw do
  root 'main#index'

  resources :courts do
    collection do
      post :delete_all
    end
    member do
      post :add_worker
    end
  end

  resources :workers, :shifts
end

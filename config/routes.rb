Rails.application.routes.draw do
  devise_for :admins
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'home#index'
  resources :managers, only: %i[index show new create edit update destroy] # do
  #   member do
  #     get 'edit'
  #     put 'update', as: 'update'
  #   end
  #   collection do
  #     get 'new', as: 'new'
  #     post 'create', as: 'create'
  #   end
  # end
end



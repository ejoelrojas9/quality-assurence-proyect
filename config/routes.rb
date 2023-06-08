Rails.application.routes.draw do
  devise_for :admins
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'managers#index', patch: '/managers'
  resources :managers do
    member do
      get 'edit'
    end
    collection do
      get 'new'
    end
  end

end



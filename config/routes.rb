Rails.application.routes.draw do
  root 'uploaders#index'
  # Add Routes to js
  resources :uploaders do 
    member do
      get 'controls'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'uploaders#index'
  resources :uploaders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

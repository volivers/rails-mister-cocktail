Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  get 'doses/delete'
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  get 'cocktails/create'
  get 'cocktails/delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  
  resources :cocktails, only: [ :index, :new, :create, :show ] do
    resources :doses, only: [ :new, :create ]
  end

  resources :doses, only: [ :destroy ]
end

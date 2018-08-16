Rails.application.routes.draw do
  get 'root/new'
  get 'map/new'
  get 'pages/index'
  get 'pointsave/index'
  post 'pointsave/index',to:'pointsave#create'
  get 'map/index'
  post 'map/new',to:'map#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pointsave/new'
  post 'root/new',to:'root#create'
  root 'pages#index'

resources :root
end

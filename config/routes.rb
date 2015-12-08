Rails.application.routes.draw do
  get 'comments/create'

  get 'statics/index'

  get 'statics/about'

  get 'statics/contact'



  root 'statics#index'

  resources :posts do
    resources :comments
  end


  resources :workshops
  devise_for :admins
  devise_for :users
  
end

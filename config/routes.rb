Rails.application.routes.draw do
  get 'comments/create'

  get 'statics/index'

  get 'statics/about'

  get 'statics/contact'




  root 'statics#index'

  resources :posts do
    member do
      get 'like', to: 'posts#upvote'
      get 'dislike', to: 'posts#downvote'
    end
    resources :comments
  end


  resources :workshops
  
  devise_for :admins
  resources :admins
  
  devise_for :users
  resources :users

  resources :contributions
  
end

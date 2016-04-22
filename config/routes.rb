Rails.application.routes.draw do
  get 'welcome/index'

  resources :forum_threads
  resources :contributions
  get 'comments/create'

  get 'statics/index'

  get 'statics/about'

  get 'statics/contact'

devise_for :users


  

  resources :posts do
    member do
      get 'like', to: 'posts#upvote'
      get 'dislike', to: 'posts#downvote'
    end
    resources :comments
  end

  resources :forum_threads do
    member do
      get 'like', to: 'posts#upvote'
      get 'dislike', to: 'posts#downvote'
    end
    resources :responses
  end

  resources :workshops
  
  devise_for :admins
  resources :admins
  
   
  resources :users

  resources :contributions

  authenticated :user do 
    root 'posts#index', as: "authenticated_user_root"
  end

  authenticated :admin do 
    root 'posts#new', as: "authenticated_admin_root"
  end

  root 'welcome#index'
  
end

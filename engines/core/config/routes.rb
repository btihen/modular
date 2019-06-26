Samurai::Core::Engine.routes.draw do
  devise_for :users, class_name: "Samurai::User", module: :devise

  resources :users, except: [:show, :new, :create]

  namespace :admin do
    resources :users #, only: :index

    get '/', to: 'overview#index'  # admin_path
    root to: 'overview#index'      # admin_root
  end
  
  get '/home', to: 'users#index',  as: 'home'
  root to: 'users#index'            # samurai_root

end

Samurai::Core::Engine.routes.draw do
  devise_for :users, class_name: "Samurai::User", module: :devise
  get '/home', to: 'home#index',  as: 'home'
  # get '/landing',   to: 'landing#index',    as: 'landing'

  namespace :admin do
    resources :users, only: :index

    get '/', to: 'overview#index'  # admin_path
    root to: 'overview#index'      # admin_root
  end
  
  root to: 'home#index'            # samurai_root

end

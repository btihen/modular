Samurai::Core::Engine.routes.draw do
  devise_for :users, class_name: "Samurai::User", module: :devise
  get '/dashboard', to: 'dashboard#index',  as: 'dashboard'
  get '/landing',   to: 'landing#index',    as: 'landing'
  namespace :admin do
    # resources :users, only: :index
    get '/', to: 'admin#index'
    root to: 'admin#index'
  end
  root to: 'dashboard#index'

end

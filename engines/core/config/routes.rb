Samurai::Core::Engine.routes.draw do
  devise_for :users, class_name: "Samurai::User", module: :devise
  root to: 'dashboard#index'
  get '/dashboard', to: 'dashboard#index',  as: 'dashboard'
  get '/landing',   to: 'landing#index',    as: 'landing'
end

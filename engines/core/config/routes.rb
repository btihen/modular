Samurai::Core::Engine.routes.draw do
  root to: 'dashboard#index'
  get '/dashboard', to: 'dashboard#index',  as: 'dashboard'
  get '/landing',   to: 'landing#index',    as: 'landing'
end

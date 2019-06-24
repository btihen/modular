Rails.application.routes.draw do
  get '/landing', to: 'landing#index'
  root to: 'landing#index'

  # mount Samurai::Core::Engine => '/', as: 'samurai'
  mount Samurai::Core::Engine => '/samurai', as: 'samurai'
end

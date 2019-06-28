Samurai::Core::Engine.routes.draw do
  # extending the core routes with this
  scope module: 'contacts' do
    resources :contacts
  end
end

$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "samurai/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "samurai_core"
  spec.version     = Samurai::Core::VERSION
  spec.authors     = ["Bill Tihen"]
  spec.email       = ["btihen@gmail.com"]
  spec.homepage    = "https://github.com/btihen/modular"
  spec.summary     = "TEST Engine Core module."
  spec.description = "Landing page, user: authentication, authorization and home page"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = 'http://nopublish.com'
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency 'rails', '~> 6.0.0.rc1'
  spec.add_dependency 'pg'

  # boot strap still uses jquery :(
  spec.add_dependency 'jquery-rails'
  spec.add_dependency 'bootstrap', '~> 4.3.1'
  spec.add_dependency 'webpacker', '~> 4.0'
  # LOGIN OPTIONS
  # alternative to devise from thoughtbot
  # modular/engines/core $
  # spec.add_dependency 'clearance'
  # modular/engines/core $
  # rails g clearance:install
  spec.add_dependency 'devise'
  # modular/engines/core $
  # rails g devise:install
  # rails g devise User
  # rails db:migrate
  # rails generate devise:views
  # If you have more than one Devise model in your application (such as User and Admin), you will notice that Devise uses the same views for all models. Fortunately, Devise offers an easy way to customize views. All you need to do is set config.scoped_views = true inside the config/initializers/devise.rb file.
  # After doing so, you will be able to have views based on the role like users/sessions/new and admins/sessions/new. If no view is found within the scope, Devise will use the default view at devise/sessions/new. 
  # You can also use the generator to generate scoped views:
  # rails generate devise:views users
  # AUTHORIZATION OPTIONS
  spec.add_dependency 'pundit'
  # rails g pundit:install

  # TESTING OPTIONS
  spec.add_development_dependency 'faker'
  spec.add_development_dependency 'pry-rails'
  spec.add_development_dependency 'rspec-rails'
  # modular/engines/core $
  # rails g rspec:install
  spec.add_development_dependency 'factory_bot_rails'
end

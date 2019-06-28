$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "samurai/contacts/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "samurai_contacts"
  spec.version     = Samurai::Contacts::VERSION
  spec.authors     = ["Bill Tihen"]
  spec.email       = ["btihen@gmail.com"]
  spec.homepage    = "http://contacts.ch"
  spec.summary     = ""
  spec.description = "Contacts."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.0.rc1"
  spec.add_dependency 'samurai_core'

  spec.add_dependency "pg"


  # boot strap still uses jquery :(
  spec.add_dependency 'jquery-rails'
  spec.add_dependency 'bootstrap', '~> 4.3.1'
  spec.add_dependency 'webpacker', '~> 4.0'

  # TESTING OPTIONS
  spec.add_development_dependency 'faker'
  spec.add_development_dependency 'pry-rails'
  spec.add_development_dependency 'rspec-rails'
  # modular/engines/core $
  # rails g rspec:install
  spec.add_development_dependency 'factory_bot_rails'
end

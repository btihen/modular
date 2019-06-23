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
  spec.add_dependency 'bootstrap', '~> 4.3.1'
  spec.add_dependency 'webpacker', '~> 4.0'
  spec.add_dependency 'jquery-rails'
  spec.add_dependency 'devise'

  spec.add_development_dependency 'pg'
end

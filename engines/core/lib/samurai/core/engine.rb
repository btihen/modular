module Samurai
  module Core
    class Engine < ::Rails::Engine
      isolate_namespace Samurai

      # within this engine allows us to write 
      # 'admin/shared/nav' instead of 'samurai/admin/shared/nav'
      # paths["app/views"] << "app/views/samurai"

      # copy migrations from engine to container app
      initializer :append_migration do |app|
        unless app.root.to_s.match(root.to_s)
          config.paths["db/migrate"].expanded.each do |p|
            app.config.paths["db/migrate"] << p
          end
        end
      end

      # gems must be installed in top application and this allows the factories to be used
      initializer 'samurai.factories', after: 'factory_bot.set_factory_paths' do
        factories_location = File.expand_path('../../../../spec/factories/samurai', __FILE__)
        FactoryBot.definition_file_paths.unshift(factories_location) if defined?(FactoryBot)
      end

      # # configure generators within the engine
      # config.generators do |g|
      #   g.test_framework :rspec, fixture: false
      #   g.fixture_replacement :factory_bot #, dir: 'spec/factories/samurai'
      #   g.factory_bot dir: 'spec/factories/samurai'
      # end

      # config dev server proxy
      initializer "webpacker.proxy" do |app|
        insert_middleware = begin
                            Samurai.webpacker.config.dev_server.present?
                          rescue
                            nil
                          end
        next unless insert_middleware

        app.middleware.insert_before( 0, 
                                      Webpacker::DevServerProxy, # "Webpacker::DevServerProxy" if Rails version < 5
                                      ssl_verify_none: true,
                                      webpacker: Samurai.webpacker
                                    )
      end

    end

  end
end 

module Samurai
  module Core
    class Engine < ::Rails::Engine
      isolate_namespace Samurai

      # copy migrations from engine to container app
      initializer :append_migration do |app|
        unless app.root.to_s.match(root.to_s)
          config.paths["db/migrate"].expanded.each do |p|
            app.config.paths["db/migrate"] << p
          end
        end
      end

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

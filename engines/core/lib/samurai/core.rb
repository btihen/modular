require 'bootstrap'
require 'jquery-rails'
require 'devise'

module Samurai
  module Core

    class << self
      def webpacker
        @webpacker ||= ::Webpacker::Instance.new(
          root_path: ROOT_PATH,
          config_path: ROOT_PATH.join("config/webpacker.yml")
        )
      end
    end

  end

end

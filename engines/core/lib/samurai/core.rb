require 'jquery-rails'
require 'bootstrap'
require 'devise'
require 'pundit'

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

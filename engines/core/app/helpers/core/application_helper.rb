module Samurai
  module Core
    module ApplicationHelper

      include ::Webpacker::Helper

      def current_webpacker_instance
        Samurai.webpacker
      end

    end
  end

end

module Samurai
  # module Core
    module ApplicationHelper

      # flash css class mapping
      FLASH_CLASSES = {
        notice:   'alert alert-info',
        success:  'alert alert-success',
        alert:    'alert alert-warning', 
        error:    'alert alert-danger',
      }
      def flash_class(level)
        FLASH_CLASSES[level]
      end 

      # webpacker instance helper
      include ::Webpacker::Helper
      def current_webpacker_instance
        Samurai.webpacker
      end

    end
  # end

end

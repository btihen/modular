module Samurai
  # module Core
    module ApplicationHelper

      # webpacker instance helper
      include ::Webpacker::Helper
      def current_webpacker_instance
        Samurai.webpacker
      end

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

      def active_page(path)
        current_page?(path) ? 'active' : ''
      end

      # https://stackoverflow.com/questions/1203892/how-can-i-find-out-the-current-route-in-rails
      def active_path(match_controller)
        current_uri = request.path_info  # "/admin/users"
        current_controller = current_uri.split('/').second
        current_controller.eql?(match_controller) ? 'active' : ''
      end

    end
  # end

end

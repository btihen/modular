module Samurai
  module Admin

    class AdminRestrictionController < ApplicationController # RestrictionController
      before_action :is_admin! 

      private 

      def is_admin!
        current_user.admin
      end
    end

  end
end
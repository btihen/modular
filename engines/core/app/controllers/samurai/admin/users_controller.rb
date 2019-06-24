module Samurai
  module Admin

    class UsersController < RestrictionController
      def index 
        users = Samurai::User.ordered
        render 'index', locals: { users: users }
      end
    end

  end
end
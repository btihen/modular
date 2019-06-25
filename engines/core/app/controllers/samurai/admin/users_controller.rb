module Samurai
  module Admin

    class UsersController < ApplicationController # RestrictionController
      def index 
        # authorize users, :index?  # if data dependent -- then send the data
        # authorize User, :index?    # if just model based then this is best

        users = Samurai::User.ordered
        render 'index', locals: { users: users }
      end
    end

  end
end
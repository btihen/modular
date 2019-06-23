module Samurai
  module Admin

    class AdminController < ApplicationController
      def index 
        users = Samurai::User.all
        render 'index', locals: { users: users }
      end
    end

  end
end
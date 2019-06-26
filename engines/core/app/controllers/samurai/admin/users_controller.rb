module Samurai
  module Admin

    class UsersController < ApplicationController # RestrictionController

      def index 
        users = Samurai::User.ordered

        render 'index', locals: { users: users }
      end 

      def show 
      end 

      def edit 
      end 

      def update 
      end

      def new 
      end 

      def create 
      end

      def destroy 
      end

    end

  end
end
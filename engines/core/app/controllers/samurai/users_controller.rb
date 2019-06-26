module Samurai
  class UsersController < ApplicationController # RestrictionController
    # after_action :verify_authorized,  except: [:index]
    # after_action :verify_policy_scoped, only: [:index]

    def index 
      users = Samurai::UserPolicy::UserIndexScope.new(current_user, User).resolve

      render 'index', locals: {users: users, current_user: current_user}
    end

    # def show
    # end

    def edit 
    end 
    def update 
    end 

    # def new 
    # end
    # def create 
    # end 

    def destroy
    end
    
  end
end

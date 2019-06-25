module Samurai
  class HomeController < ApplicationController # RestrictionController
    # after_action :verify_authorized,  except: [:index]
    # after_action :verify_policy_scoped, only: [:index]
    # # after_action :verify_authorized,  except: [:search, :index, :dashboard]
    # # after_action :verify_policy_scoped, only: [:search, :index, :dashboard]

    def index 
      render 'index'
    end
    
  end
end

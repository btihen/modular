module Samurai
  class RestrictionController < ApplicationController
    before_action :authenticate_user!

    include Pundit

    # Verify that controller actions are authorized. Optional, but good.
    after_action :verify_authorized,  except: :index
    after_action :verify_policy_scoped, only: :index
  
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  
    private
    
    def user_not_authorized
      # render file: 'static/403.html', status: 403, layout: false
      flash[:error] = "You are not authorized to perform this action."
      redirect_to request.headers["Referer"] || root_path
    end
    
  end
end

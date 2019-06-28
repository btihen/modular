module Samurai
  class ApplicationController < ActionController::Base
    # protect_from_forgery prepend: true, with: :exception
    # protect_from_forgery with: :null_session
    # protect_from_forgery
    protect_from_forgery with: :exception

    before_action :authenticate_user!

    include Pundit
    
    # # Verify that controller actions are authorized. Optional, but good.
    # after_action :verify_authorized,  except: :index
    # after_action :verify_policy_scoped, only: :index
  
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  
    private
    
    def user_not_authorized
      # render file: 'static/403.html', status: 403, layout: false
      flash[:error] = "You are not authorized to perform this action."
      redirect_to request.headers["Referer"] || root_path
    end

  end
end

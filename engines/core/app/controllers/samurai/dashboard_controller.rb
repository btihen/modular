module Samurai
  class DashboardController < ApplicationController
     
    before_action :authenticate_user!

    def index 
      render 'index'
    end
  end
end

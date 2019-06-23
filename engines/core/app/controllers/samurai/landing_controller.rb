module Samurai
  class LandingController < ApplicationController
    # skip_before_filter :authenticate_user!
    def index 
      render 'index'
    end
  end
end

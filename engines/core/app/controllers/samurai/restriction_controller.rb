module Samurai
  class RestrictionController < ApplicationController
    before_action :authenticate_user!
    
  end
end

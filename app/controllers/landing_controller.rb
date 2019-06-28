# module Samurai
class LandingController < ApplicationController
  
  def index 
    @landing = "hi"
    render :index
  end

end

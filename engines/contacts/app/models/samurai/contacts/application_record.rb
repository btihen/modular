module Samurai 
  module Contacts
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end

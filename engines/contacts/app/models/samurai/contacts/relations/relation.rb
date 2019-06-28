module Samurai::Contacts
  class Relation < ApplicationRecord
    belongs_to :samurai_user
  end
end

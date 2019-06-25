module Samurai
  module Admin

    class OverviewController < ApplicationController # AdminRestrictionController
      def index
        limit = 5
        users = Samurai::User.ordered.limit(limit)
        render 'index', locals: { users: users, limit: limit }
      end
    end

  end
end
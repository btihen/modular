module Samurai
  module Admin
    class UserPolicy

      def index?
        user.admin?
      end

      def show?
        user.admin? || (user == current_user)
      end

      def edit?
        user.admin? || (user == current_user)
      end

      def update?
        edit?
      end

      def destroy?
        # admin can't delete self
        return false if user.admin? && (user == current_user)

        # admin can delete anyone and user can delete self
        user.admin? || (user == current_user)
      end

      class UserIndexScope < Samurai::ApplicationPolicy::Scope
        def resolve
          if user.admin?
            scope.all
            # Samurai::User.all
          else 
            Samurai::User.where(user.id)
          end
        end
      end

    end
  end
end

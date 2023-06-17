class RecipePolicy < ApplicationPolicy
  class Scope < Scope
    class RecipePolicy < ApplicationPolicy
      def show?
        true
      end

      def create?
        user.present?
      end

      def new?
        create?
      end
    end
  end
end

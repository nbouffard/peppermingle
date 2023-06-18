class RecipePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    user.present? && record.user_id == user.id
  end

  def edit?
    update?
  end
end

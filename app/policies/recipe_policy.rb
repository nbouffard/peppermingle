class RecipePolicy < ApplicationPolicy
  class Scope < Scope
  end

  def update?
    user&.id == record.user_id
  end

  def edit?
    update?
  end
end

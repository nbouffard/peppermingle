class RecipePolicy < ApplicationPolicy
  class Scope < Scope
  end

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

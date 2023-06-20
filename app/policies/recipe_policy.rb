class RecipePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def update?
    user&.id == record.user_id
  end

  def edit?
    update?
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

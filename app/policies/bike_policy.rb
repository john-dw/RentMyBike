class BikePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def destroy?
    record.user == user
  end

  def new?
    true
  end

  def create?
    true
  end

  def update?
    record.user == user
  end

  def edit?
    record.user == user
  end
end

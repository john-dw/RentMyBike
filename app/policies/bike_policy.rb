class BikePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
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

end

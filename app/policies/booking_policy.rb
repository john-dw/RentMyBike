class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def accept?
    record.bike.user == user
  end

  def reject?
    record.bike.user == user
  end

  def new?
    record.user = user
  end

  def create?
    true
  end
end

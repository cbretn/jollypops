class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: current_user)
    end
  end

  def index?
    true
  end

  def show?
    record.user == user
  end

  def create?
    true
  end

  def new?
    create?
  end
end

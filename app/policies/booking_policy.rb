class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
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

  def user?
    true
  end
end

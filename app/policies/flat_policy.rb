class FlatPolicy < ApplicationPolicy
  class Scope < Struct.new(:user, :scope)
    def resolve
      scope
    end
  end

  def index?
    true
  end

  def create?
    true
  end

  def update?
    if record.user_id == user.id
     true
    else
      false
    end
  end

  def destroy?
    if record.user_id == user.id
     true
    else
      false
    end
  end
end

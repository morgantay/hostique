class HostelPolicy < ApplicationPolicy
  class Scope < Scope
    def show?
      true
    end

    def update?
      record.user = current_user
    end

    def destroy?
      record.user = current_user
    end
  end
end

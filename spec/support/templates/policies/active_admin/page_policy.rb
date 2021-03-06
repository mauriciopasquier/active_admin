module ActiveAdmin
  class PagePolicy < ApplicationPolicy
    class Scope < Scope
      def resolve
        scope
      end
    end

    def show?
      case record.name
      when "Dashboard"
        true
      else
        false
      end
    end
  end
end

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guess user (not logged in)
    if user.admin?
      can :manage, :all
    else
      can :show, Location
      can :show, Collection
      can :create, Collection
    end
  end
end

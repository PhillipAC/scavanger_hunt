class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guess user (not logged in)
    if user.admin?
      can :manage, :all
      can :live, :pages
      can :home, :pages
    else
      can :home, :pages
      can :show, Location
      can :show, Collection
      can :create, Collection
    end
  end
end

class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :manage, Spending, author: user
    can :manage, Catergory, user_id: user.id
  end
end

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    _settings = Settings.instance

    if user.has_role? :admin
      can :manage, Screenshot
      can :manage, Video
      can :manage, Signup
      can :manage, Category
      can :manage, Contact
      can :manage, Testimonial
      can :manage, Webinar
      can :display, :dashboard
      can :manage, User
      can :manage, Content
      can :manage, Request
      can :manage, L::Page
      can :manage, L::News
      can :manage, L::Gallery
      can :manage, L::GalleryPhoto
      can :manage, L::NewsletterMail
    elsif user.has_role? :user
      can [:read, :update, :destroy], User, id: user.id
    end
    can :read, Category
    can :create, Contact
    can :create, Signup
    can :create, Request
    can :read, Webinar
    can :read, L::Page
    can :read, L::News
    can :read, L::Gallery
    can :read, L::GalleryPhoto
    can :create, L::NewsletterMail

    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end

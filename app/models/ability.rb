class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
      user ||= User.new
      if user.role? :admin
        can :manage, :all
      elsif user.persisted?
     
       
        # can :new :create :edit :update menu, if user = menu.restaurant.restuarateur
        # can manage restaurant, if user.try(restaurateur) == restaurant.restaurateur
        # can manage restaurateur, if user == restaurateur.user

        cannot :update, Category
        cannot :destroy, Category
        cannot :create, Category
        can :read, Category

        can :manage, Booking do |booking|
            booking.user == user
        end

        
        can :manage, User do |u|
            u == user
        end
        

        can :manage, Restaurateur do |r|
            r.user == user
        end

        can :create, Restaurant 

        # can :manage, Restaurant do |restaurant|
        #     restaurant.try(:restaurateur).user == user
        # end

        can :read, User

     

        

       

   

      else
        can :read, Restaurateur
        can :read, Category
        can :read, Restaurant
        cannot :manage, Booking
        can :read, User
      end
   
  end
end



    
  

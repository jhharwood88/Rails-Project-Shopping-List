class ShoppingListsController < ApplicationController

	# before_action :user_signed_in?

	def index 
		@all_lists = Shoppinglist.all
		

		render '/shoppinglists/index'
	end

	# def create
 #    cart = Shoppinglist.create(name: params[:name], user_id: current_user.id)
 #    if cart
 #      response = ride.take_ride
      
 #      redirect_to user_path(cart.user_id)
 #    else
 #    	flash[:notice] = "Could not create a new list"
 #      redirect_to user_path(ride.attraction)
 #    end
 #  end
end

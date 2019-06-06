class ShoppinglistsController < ApplicationController

	before_action :require_login

	def create
    cart = Shoppinglist.create(name: params[:name], user_id: current_user.id, item_id: params[:item_id])
    if cart
      response = ride.take_ride
      flash[:notice] = response
      redirect_to user_path(ride.user)
    else
      redirect_to attraction_path(ride.attraction)
    end
  end
end

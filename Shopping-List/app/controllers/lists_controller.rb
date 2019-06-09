class ListsController < ApplicationController

	before_action :authenticate_user!

	def index 
		@current_user_list = current_user.lists
	end

	def show 
		@list = List.find(params[:id])
		@user_lists = current_user.lists[params[:id].to_i-1].item_lists
		
		
		# access the item_list that matches my list id *@list.items*

		#give a way for users to add an item to the item_list array

		# ???
		# to access array of all item lists = @list.item_lists

		#update the view to show the newly added item
		# reload :show
	end

	def new
		@list = List.new 
		@list.user = current_user
	end

	def create
		@list = current_user.lists.build(list_params)
		if @list.save
			redirect_to user_list_path([@list.user,@list])
		else
			render :new
		end
	end

private

	def list_params
	  params.require(:list).permit(:name)
	end

end

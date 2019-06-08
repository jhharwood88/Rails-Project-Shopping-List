class ListsController < ApplicationController

	before_action :authenticate_user!

	def index 
		current_user_lists
	end

	def show 
		@list = List.find(params[:id])
		
		# access the item_list that matches my list id *@list.items*

		#give a way for users to add an item to the item_list array

		# ???
		# to access array of all item lists = @list.item_lists

		#update the view to show the newly added item
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
	
	def current_user_lists
		@current_user_list = []
	 	@all_lists = List.all
		@all_lists.each do |list|
			if list.user_id == current_user.id
				@current_user_list << list
			end
		end
		@current_user_list
	end


	def list_params
	  params.require(:list).permit(:name)
	end

end

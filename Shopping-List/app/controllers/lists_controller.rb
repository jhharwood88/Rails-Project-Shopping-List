class ListsController < ApplicationController

	before_action :authenticate_user!

	def index 
		@all_lists = List.all
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
			#color red for error fields
		end
	end

	private

	  def list_params
	    params.require(:list).permit(:name)
	  end

end

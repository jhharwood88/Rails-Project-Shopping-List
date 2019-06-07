class ListsController < ApplicationController

	# before_action :user_signed_in?

	def index 
		
	end

	def new
		@list = List.new 
	end

	def create
		@list = List.create(list_params)
		if @list
			redirect_to list_path(@list)
		end
	end

	private

	  def list_params
	    params.require(:list).permit(:name, :user_id)
	  end

end

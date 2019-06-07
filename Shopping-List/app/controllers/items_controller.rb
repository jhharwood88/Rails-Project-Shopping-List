class ItemsController < ApplicationController

	def index
		@items = Item.all
	end

	def new
		@item = Item.new 
	end

	def create
		@item = Item.create(item_params)
		if @item
			redirect_to items_path
		end
	end

  private

	  def item_params
	    params.require(:item).permit(:name, :category, :price)
	  end
end

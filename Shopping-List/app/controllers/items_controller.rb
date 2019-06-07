class ItemsController < ApplicationController

	def index
		@items = Item.all
	end

	def new 
	end

	def create
		@item = Item.new(name: params[:name], category: params[:category], price: params[:price])
		if @item
			@item.save
		end
	end
end

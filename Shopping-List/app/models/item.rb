class Item < ApplicationRecord
	has_many :shoppinglists
	belongs_to :itemlist
  	has_many :users, through: :shoppinglists

  	
end

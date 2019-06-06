class Item < ApplicationRecord
	has_many :shoppinglists
	belongs_to :itemlist
  	has_many :users, through: :shoppinglists

end


#include validations for item model, validate presence on name for shopping list

#devise is acceptable for omniauth 

#remove quantity from item, item list has item id and quantity 

#new join on item list, shopping list is no longer a join table
	#a shopping list is always associated with a user, creating new list associates items with list through itemid.


class Item < ApplicationRecord
	has_many :shoppinglists
  	has_many :users, through: :shoppinglists

  	
end

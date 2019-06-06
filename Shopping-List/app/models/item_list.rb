class ItemList < ApplicationRecord

	belongs_to :shopping_list
	has_many :items

end
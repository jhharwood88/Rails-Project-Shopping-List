class ItemList < ApplicationRecord

	belongs_to :shopping_list
	belongs_to :item

	validates :item_id, presence: true
	validates :quantity, presence: true
end
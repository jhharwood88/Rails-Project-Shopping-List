class ItemList < ApplicationRecord

	belongs_to :shopping_list
	has_many :items

	validates :item_id, presence: true
	validates :quantity, presence: true
end
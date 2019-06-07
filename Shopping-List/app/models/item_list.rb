class ItemList < ApplicationRecord

	belongs_to :list
	belongs_to :item

	validates :item_id, presence: true
	validates :quantity, presence: true
end
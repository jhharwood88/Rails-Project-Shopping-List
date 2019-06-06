class Shoppinglist < ApplicationRecord
	belongs_to :user
	has_many :items, through: :item_lists
end

class Shoppinglist < ApplicationRecord
	belongs_to :user
	has_many :item_lists
	has_many :items, through: :item_lists

	validates :name, presence: true
	validates :user_id, presence: true
end
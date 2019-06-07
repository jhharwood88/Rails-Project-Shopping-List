class Item < ApplicationRecord
	has_many :item_lists
  	has_many :lists, through: :item_lists

  	validates :name, presence: true
	validates :category, presence: true
	validates :price, presence: true
end

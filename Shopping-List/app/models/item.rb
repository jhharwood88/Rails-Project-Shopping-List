class Item < ApplicationRecord
	has_many :shoppinglists
	belongs_to :itemlist
  	has_many :users, through: :shoppinglists

  	validates :name, presence: true
	validates :category, presence: true
	validates :price, presence: true
  	
end

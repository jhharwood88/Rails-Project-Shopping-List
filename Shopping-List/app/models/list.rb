class List < ApplicationRecord
  belongs_to :user
  has_many :item_lists
  has_many :items, through: :item_lists

  def is_empty?
  	@all_lists = List.all

  end
end

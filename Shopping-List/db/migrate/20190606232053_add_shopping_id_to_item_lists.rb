class AddShoppingIdToItemLists < ActiveRecord::Migration[5.2]
  def change
    add_reference :item_lists, :shopping_list, foreign_key: true
  end
end

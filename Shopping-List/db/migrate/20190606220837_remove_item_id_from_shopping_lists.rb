class RemoveItemIdFromShoppingLists < ActiveRecord::Migration[5.2]
  def change
    remove_column :shopping_lists, :item_id, :integer
  end
end

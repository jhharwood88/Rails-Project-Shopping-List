class CreateShoppingList < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_lists do |t|
      t.string :name
      t.integer :user_id
      t.integer :item_id
    end
  end
end

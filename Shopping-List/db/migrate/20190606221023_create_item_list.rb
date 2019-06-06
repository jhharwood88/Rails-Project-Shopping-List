class CreateItemList < ActiveRecord::Migration[5.2]
  def change
    create_table :item_lists do |t|
      t.integer :item_id
      t.integer :quantity
    end
  end
end

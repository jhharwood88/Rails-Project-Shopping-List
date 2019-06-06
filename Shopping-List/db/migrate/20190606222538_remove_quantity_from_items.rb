class RemoveQuantityFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :quantity, :integer
  end
end

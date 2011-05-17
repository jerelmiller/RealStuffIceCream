class AddProductIdToFlavors < ActiveRecord::Migration
  def self.up
    add_column :flavors, :product_id, :integer
  end

  def self.down
    remove_column :products, :product_id
  end
end

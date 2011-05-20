class RenameColumnInFlavors < ActiveRecord::Migration
  def self.up
    rename_column :flavors, :title, :name
  end

  def self.down
    rename_column :flavors, :name, :title
  end
end

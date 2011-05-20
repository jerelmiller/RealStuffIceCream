class RenameColumnNewsToArticles < ActiveRecord::Migration
  def self.up
    rename_table :news, :articles
  end

  def self.down
    rename_table :articles, :news
  end
end

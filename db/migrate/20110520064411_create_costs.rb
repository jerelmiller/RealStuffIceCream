class CreateCosts < ActiveRecord::Migration
  def self.up
    create_table :costs do |t|
      t.string :size
      t.decimal :cost, :precision => 8, :scale => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :costs
  end
end

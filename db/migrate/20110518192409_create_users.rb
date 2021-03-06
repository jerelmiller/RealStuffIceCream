class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username, :null => :false
      t.string :email, :null => :false, :unique => :true
      t.string :crypted_password, :null => :false
      t.string :password_salt, :null => :false
      t.string :persistence_token, :null => :false
      t.string :first_name, :null => :false
      t.string :last_name, :null => :false
      t.datetime :current_login_at
      t.datetime :last_login_at
      t.string :single_access_token, :null => :false

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end

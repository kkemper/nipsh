class ChangePassswordFields < ActiveRecord::Migration
  def self.up
  	change_table :users do |t|
  		t.rename :crypted_password_salt, :crypted_password
  		add_column :users, :password_salt, :string
  	end
  end

  def self.down
  	change_table :users do |t|
  		t.rename :crypted_password, :crypted_password_salt
  		remove_column :password_salt
  	end
  end
end

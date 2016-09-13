class AddApprovedIndexToUser < ActiveRecord::Migration
  def self.up
  	add_index :users, :approved
  end

  def self.down
  	remove_index :users, :approved
  end
end

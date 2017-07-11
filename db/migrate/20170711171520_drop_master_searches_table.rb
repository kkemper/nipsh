class DropMasterSearchesTable < ActiveRecord::Migration
  def change
    drop_table :master_searches
  end
end

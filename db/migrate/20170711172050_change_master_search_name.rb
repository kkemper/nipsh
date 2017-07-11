class ChangeMasterSearchName < ActiveRecord::Migration
  def change
    rename_table :master_search, :master_searches
  end
end

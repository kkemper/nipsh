class CreateMasterSearches < ActiveRecord::Migration
  def change
    create_table :master_searches do |t|

      t.timestamps null: false
    end
  end
end

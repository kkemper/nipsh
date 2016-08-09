class AddRequestAccessFieldsToUsers < ActiveRecord::Migration
   def change
    add_column :users, :name, :string
    add_column :users, :organization, :string
    add_column :users, :research_synopsis, :text
    add_column :users, :approved, :boolean, default: false
  end
end

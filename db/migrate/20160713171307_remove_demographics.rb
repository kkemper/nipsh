class RemoveDemographics < ActiveRecord::Migration
  def up
  	remove_column :demographics, :gender
  	remove_column :demographics, :race
  end
  def down
  	add_column :demographics, :gender, :integer
  	add_column :demographics, :race, :integer
  end
end

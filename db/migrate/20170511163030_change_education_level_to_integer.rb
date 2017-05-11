class ChangeEducationLevelToInteger < ActiveRecord::Migration
  def change
     remove_column :demographics, :ed_level
    add_column :demographics, :ed_level, :integer
  end
end

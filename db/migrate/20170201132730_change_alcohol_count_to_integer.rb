class ChangeAlcoholCountToInteger < ActiveRecord::Migration
  def change
    remove_column :tobacco_and_alcohols, :alcohol_count
    add_column :tobacco_and_alcohols, :alcohol_count, :integer
  end
end

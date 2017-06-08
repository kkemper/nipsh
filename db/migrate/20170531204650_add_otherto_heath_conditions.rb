class AddOthertoHeathConditions < ActiveRecord::Migration
  def change
    add_column :health_conditions, :other, :boolean
  end
end

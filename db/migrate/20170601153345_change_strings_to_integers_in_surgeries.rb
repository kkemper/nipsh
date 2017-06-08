class ChangeStringsToIntegersInSurgeries < ActiveRecord::Migration
  def change
        remove_column :surgeries, :chest
    remove_column :surgeries, :back
    remove_column :surgeries, :neck
    remove_column :surgeries, :shoulder
    remove_column :surgeries, :leg
    add_column :surgeries, :chest, :integer
    add_column :surgeries, :back, :integer
    add_column :surgeries, :neck, :integer
    add_column :surgeries, :shoulder, :integer
    add_column :surgeries, :leg, :integer
  end
end

class ChangeIntegersToStringsInSurgeries < ActiveRecord::Migration
  def change
    remove_column :surgeries, :chest
    remove_column :surgeries, :back
    remove_column :surgeries, :neck
    remove_column :surgeries, :shoulder
    remove_column :surgeries, :leg
    add_column :surgeries, :chest, :string
    add_column :surgeries, :back, :string
    add_column :surgeries, :neck, :string
    add_column :surgeries, :shoulder, :string
    add_column :surgeries, :leg, :string
  end
end

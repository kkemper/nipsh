class ChangeChewTobaccoToInteger < ActiveRecord::Migration
  def change
    remove_column :tobacco_and_alcohols, :chew_tobacco
    add_column :tobacco_and_alcohols, :chew_tobacco, :integer
    add_column :tobacco_and_alcohols, :chew_years, :integer
    add_column :tobacco_and_alcohols, :chew_count, :integer
    add_column :tobacco_and_alcohols, :cigar_years, :integer
    add_column :tobacco_and_alcohols, :cigar_count, :integer
    add_column :tobacco_and_alcohols, :alcohol_user, :boolean
  end
end

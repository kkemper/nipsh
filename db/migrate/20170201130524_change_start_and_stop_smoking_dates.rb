class ChangeStartAndStopSmokingDates < ActiveRecord::Migration
  def change
    remove_column :tobacco_and_alcohols, :start_smoke
    remove_column :tobacco_and_alcohols, :stop_smoke
    add_column :tobacco_and_alcohols, :start_smoke, :integer
    add_column :tobacco_and_alcohols, :stop_smoke, :integer
  end
end

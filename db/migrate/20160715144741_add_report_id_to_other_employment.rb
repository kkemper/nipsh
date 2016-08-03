class AddReportIdToOtherEmployment < ActiveRecord::Migration
  def change
  	add_column :other_employments, :report_id, :string
  end
end

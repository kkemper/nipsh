class ChangeTobaccoAndAlcoholEmployeeIdtoMdsReportId < ActiveRecord::Migration
  def change
    rename_column :tobacco_and_alcohols, :employee_id, :mds_report_id
  end
end

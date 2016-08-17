class CreateDemographicsNew < ActiveRecord::Migration
  def change
    create_table :demographics do |t|
    	t.string :mds_report_id
    	t.integer :gender
    	t.integer :ethnicity
    	t.integer :race
    	t.integer :marital_status
    	t.string :ed_level
    end
  end
end

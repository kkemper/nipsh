class RemoveHearingTestsTable < ActiveRecord::Migration
  def change
    drop_table :hearing_tests
  end
end

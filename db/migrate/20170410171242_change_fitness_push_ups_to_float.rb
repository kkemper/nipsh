class ChangeFitnessPushUpsToFloat < ActiveRecord::Migration
  def change
        remove_column :fitness_test_tests, :fitness_push_ups
    add_column :fitness_test_tests, :fitness_push_ups, :float
  end
end

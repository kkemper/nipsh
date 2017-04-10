class ChangeFitnessMaxSbpToFloat < ActiveRecord::Migration
  def change
        remove_column :fitness_test_tests, :fitness_max_sbp
    add_column :fitness_test_tests, :fitness_max_sbp, :float
  end
end

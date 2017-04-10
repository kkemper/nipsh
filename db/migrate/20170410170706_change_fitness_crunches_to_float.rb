class ChangeFitnessCrunchesToFloat < ActiveRecord::Migration
  def change
    remove_column :fitness_test_tests, :fitness_crunches
    add_column :fitness_test_tests, :fitness_crunches, :float
  end
end

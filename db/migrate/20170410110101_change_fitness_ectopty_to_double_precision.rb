class ChangeFitnessEctoptyToDoublePrecision < ActiveRecord::Migration
  def change
    remove_column :fitness_test_tests, :fitness_ectopy
    add_column :fitness_test_tests, :fitness_ectopy, :float
  end
end

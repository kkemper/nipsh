class ChangeFitnessAgeToFloat < ActiveRecord::Migration
  def change
        remove_column :fitness_test_tests, :fitness_age
    add_column :fitness_test_tests, :fitness_age, :float
  end
end

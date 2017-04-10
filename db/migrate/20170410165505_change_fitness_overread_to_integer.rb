class ChangeFitnessOverreadToInteger < ActiveRecord::Migration
  def change
        remove_column :fitness_test_tests, :fitness_overread
    add_column :fitness_test_tests, :fitness_overread, :integer
  end
end

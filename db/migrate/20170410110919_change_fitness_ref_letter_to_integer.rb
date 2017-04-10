class ChangeFitnessRefLetterToInteger < ActiveRecord::Migration
  def change
        remove_column :fitness_test_tests, :fitness_ref_letter
    add_column :fitness_test_tests, :fitness_ref_letter, :float
  end
end

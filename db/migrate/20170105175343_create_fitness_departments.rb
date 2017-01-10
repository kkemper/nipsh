class CreateFitnessDepartments < ActiveRecord::Migration
  def change
    create_table :fitness_departments do |t|
      t.string :fitness_dept_id
      t.string :fitness_dept_name

      t.timestamps null: false
    end
  end
end

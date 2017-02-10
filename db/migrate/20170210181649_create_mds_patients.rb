class CreateMdsPatients < ActiveRecord::Migration
  def change
    create_table :mds_patients do |t|
      t.string :lname
      t.string :fname
      t.string :mname
      t.integer :gender
      t.string :employeeid
      t.string :ssn

      t.timestamps null: false
    end
  end
end

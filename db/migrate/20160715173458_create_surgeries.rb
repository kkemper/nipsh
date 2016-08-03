class CreateSurgeries < ActiveRecord::Migration
  def change
    create_table :surgeries do |t|
      t.string :report_id
      t.integer :chest
      t.integer :back
      t.integer :neck
      t.integer :neck
      t.integer :shoulder
      t.integer :leg
      t.string :created_at
      t.string :updated_at

      t.timestamps null: false
    end
  end
end

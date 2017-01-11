class CreatePsychCalcs < ActiveRecord::Migration
  def change
    create_table :psych_calcs do |t|
      t.string :research_id
      t.integer :l
      t.integer :k
      t.integer :s
      t.integer :scale_1
      t.integer :scale_2
      t.integer :scale_3
      t.integer :scale_4
      t.integer :scale_6
      t.integer :scale_7
      t.integer :scale_8
      t.integer :scale_9
      t.integer :scale_0
      t.integer :rcd
      t.integer :rc1
      t.integer :rc2
      t.integer :rc3
      t.integer :rc4
      t.integer :rc6
      t.integer :rc7
      t.integer :rc8
      t.integer :rc9
      t.integer :anx
      t.integer :frs
      t.integer :obs
      t.integer :dep
      t.integer :hea
      t.integer :biz
      t.integer :ang
      t.integer :cyn
      t.integer :asp
      t.integer :tpa
      t.integer :lse
      t.integer :sod
      t.integer :fam
      t.integer :wrk
      t.integer :trt
      t.integer :a
      t.integer :r
      t.integer :es
      t.integer :do
      t.integer :re
      t.integer :mt
      t.integer :pk
      t.integer :mds
      t.integer :ho
      t.integer :o_h
      t.integer :mac_r
      t.integer :aas
      t.integer :aps
      t.integer :aggr
      t.integer :psyc
      t.integer :disc
      t.integer :nege
      t.integer :intr

      t.timestamps null: false
    end
  end
end

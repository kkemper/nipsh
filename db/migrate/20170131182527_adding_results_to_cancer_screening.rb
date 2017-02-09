class AddingResultsToCancerScreening < ActiveRecord::Migration
  def change
    add_column :cancer_screenings, :psa_result, :boolean
    add_column :cancer_screenings, :dre_result, :boolean
    add_column :cancer_screenings, :fob_result, :boolean
    add_column :cancer_screenings, :colonoscopy_result, :boolean
    add_column :cancer_screenings, :pap_smear_result, :boolean
    add_column :cancer_screenings, :breast_exam_result, :boolean
    add_column :cancer_screenings, :mammogram_result, :boolean
    add_column :cancer_screenings, :skin_result, :boolean
    add_column :cancer_screenings, :testicular_result, :boolean
  end
end

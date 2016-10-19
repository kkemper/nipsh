class Search < ActiveRecord::Base
  def fitness_tests
    @fitness_tests ||= find_fitness_tests
  end

  def current_jobs
    @current_jobs ||= find_current_jobs
  end

  def cancer_screenings
    @cancer_screenings ||= find_cancer_screenings
  end

  def demographics
    @demographics ||= find_demographics
  end

  def duties
    @duties ||= find_duties
  end

  def family_histories
    @family_histories ||= find_family_histories
  end

  def health_conditions
    @health_conditions ||= find_health_conditions
  end

  def hearing_tests
    @hearing_tests ||= find_hearing_tests
  end

  def immunizations
    @immunizations ||= find_immunizations
  end

  def injury_illnesses
    @injury_illnesses ||= find_injury_illnesses
  end

  def lab_data
    @lab_data ||= find_lab_data
  end

  def other_employments
    @other_employments ||= find_other_employments
  end

  def physical_activiites
    @physical_activities ||= find_physical_activities
  end

  def physical_exams
    @physical_exams ||= find_physical_exams
  end

  def surgeries
    @surgeries ||= find_surgeries
  end

  def tobacco_and_alcohols
    @tobacco_and_alcohols ||= find_tobacco_and_alcohols
  end



private

  def find_fitness_tests
    fitness_tests = FitnessTest.order(:id)
    fitness_tests = fitness_tests.where(aerobic_test_type: aerobic_test_type) if aerobic_test_type.present?
    fitness_tests = fitness_tests.where(aerobic_capacity: aerobic_capacity) if aerobic_capacity.present?
    fitness_tests = fitness_tests.where(flex_sit_reach: flex_sit_reach) if flex_sit_reach.present?
    fitness_tests = fitness_tests.where(hand_strength: hand_strength) if hand_strength.present?
    fitness_tests = fitness_tests.where(leg_strength: leg_strength) if leg_strength.present?
    fitness_tests = fitness_tests.where(arm_strength: arm_strength) if arm_strength.present?
    fitness_tests = fitness_tests.where(vertical_jump: vertical_jump) if vertical_jump.present?
    fitness_tests = fitness_tests.where(endurance_push_ups: endurance_push_ups) if endurance_push_ups.present?
    fitness_tests = fitness_tests.where(plank: plank) if plank.present?
    fitness_tests
  end

  def find_current_jobs
    current_jobs = CurrentJob.where(currently_emp: currently_emp) if currently_emp.present?
    current_jobs = CurrentJob.where(date_of_hire: date_of_hire) if date_of_hire.present?
    current_jobs = CurrentJob.where(date_of_exit: date_of_exit) if date_of_exit.present?
    current_jobs = CurrentJob.where(current_duties: current_duties) if current_duties.present?
    current_jobs = CurrentJob.where(volunteer: volunteer) if volunteer.present?
    current_jobs = CurrentJob.where(volunteer_hours: volunteer_hours) if volunteer_hours.present?
    current_jobs = CurrentJob.where(other_employment: other_employment) if other_employment.present?
    current_jobs
  end

  def find_cancer_screenings
    cancer_screenings = CancerScreening.where(psa: psa) if psa.present?
    cancer_screenings = CancerScreening.where(dre: dre) if dre.present?
    cancer_screenings = CancerScreening.where(fob: fob) if fob.present?
    cancer_screenings = CancerScreening.where(colonoscopy: colonoscopy) if colonoscopy.present?
    cancer_screenings = CancerScreening.where(pap_smear: pap_smear) if pap_smear.present?
    cancer_screenings = CancerScreening.where(breast_exam: breast_exam) if breast_exam.present?
    cancer_screenings = CancerScreening.where(mammogram: mammogram) if mammogram.present?
    cancer_screenings = CancerScreening.where(skin: skin) if skin.present?
    cancer_screenings = CancerScreening.where(testicular: testicular) if testicular.present?
    cancer_screenings = CancerScreening.where(exam_date: exam_date) if exam_date.present?
    cancer_screenings
  end

  def find_demographics
    demographics = Dempographic.where(gender: gender) if gender.present?
    demographics = Dempographic.where(ethnicity: ethnicity) if ethnicity.present?
    demographics = Dempographic.where(race: race) if race.present?
    demographics = Dempographic.where(marital_status: marital_status) if marital_status.present?
    demographics = Dempographic.where(ed_level: ed_level) if ed_level.present?
    demographics
  end

  def find_duties
    duties = Duty.where(fire_suppression_years: fire_suppression_years) if fire_suppression_years.present?
    duties = Duty.where(ems_years: ems_years) if ems_years.present?
    duties = Duty.where(mgmt_years: mgmt_years) if mgmt_years.present?
    duties
  end

  def find_family_histories
    family_histories = FamilyHistory.where(male_heart_disease: male_heart_disease) if male_heart_disease.present?
    family_histories = FamilyHistory.where(female_heart_disease: female_heart_disease) if female_heart_disease.present?
    family_histories = FamilyHistory.where(male_alcohol: male_alcohol) if male_alcohol.present?
    family_histories = FamilyHistory.where(female_alcohol: female_alcohol) if female_alcohol.present?
    family_histories = FamilyHistory.where(male_hypertension: male_hypertension) if male_hypertension.present?
    family_histories = FamilyHistory.where(female_hypertension: female_hypertension) if female_hypertension.present?
    family_histories
  end

  def find_health_conditions
    health_conditions = HealthCondition.where(diabetes: diabetes) if diabetes.present?
    health_conditions = HealthCondition.where(diabetes_ty: diabetes_ty) if diabetes_ty.present?
    health_conditions = HealthCondition.where(diabetes_current: diabetes_current) if diabetes_current.present?
    health_conditions = HealthCondition.where(diabetes_medication: diabetes_medication) if diabetes_medication.present?
    health_conditions = HealthCondition.where(hypertension: hypertension) if hypertension.present?
    health_conditions = HealthCondition.where(hypertension_ty: hypertension_ty) if hypertension_ty.present?
    health_conditions = HealthCondition.where(hypertension_current: hypertension_current) if hypertension_current.present?
    health_conditions = HealthCondition.where(hypertension_medication: hypertension_medication) if hypertension_medication.present?
    health_conditions = HealthCondition.where(hyperlipidemia: hyperlipidemia) if hyperlipidemia.present?
    health_conditions = HealthCondition.where(hyperlipidemia_ty: hyperlipidemia_ty) if hyperlipidemia_ty.present?
    health_conditions = HealthCondition.where(hyperlipidemia_current: hyperlipidemia_current) if hyperlipidemia_current.present?
    health_conditions = HealthCondition.where(hyperlipidemia_medication: hyperlipidemia_medication) if hyperlipidemia_medication.present?
    health_conditions = HealthCondition.where(cancer: cancer) if cancer.present?
    health_conditions = HealthCondition.where(cancer_ty: cancer_ty) if cancer_ty.present?
    health_conditions = HealthCondition.where(cancer_current: cancer_current) if cancer_current.present?
    health_conditions = HealthCondition.where(cancer_medication: cancer_medication) if cancer_medication.present?
    health_conditions = HealthCondition.where(heart_disease: heart_disease) if heart_disease.present?
    health_conditions = HealthCondition.where(heart_disease_ty: heart_disease_ty) if heart_disease_ty.present?
    health_conditions = HealthCondition.where(heart_disease_current: heart_disease_current) if heart_disease_current.present?
    health_conditions = HealthCondition.where(heart_disease_medication: heart_disease_medication) if heart_disease_medication.present?
    health_conditions = HealthCondition.where(resp_disease: resp_disease) if resp_disease.present?
    health_conditions = HealthCondition.where(resp_disease_ty: resp_disease_ty) if resp_disease_ty.present?
    health_conditions = HealthCondition.where(resp_disease_current: resp_disease_current) if resp_disease_current.present?
    health_conditions = HealthCondition.where(resp_disease_medication: resp_disease_medication) if resp_disease_medication.present?
    health_conditions = HealthCondition.where(gastro_disease: gastro_disease) if gastro_disease.present?
    health_conditions = HealthCondition.where(gastro_disease_ty: gastro_disease_ty) if gastro_disease_ty.present?
    health_conditions = HealthCondition.where(gastro_disease_current: gastro_disease_current) if gastro_disease_current.present?
    health_conditions = HealthCondition.where(gastro_disease_medication: gastro_disease_medication) if gastro_disease_medication.present?
    health_conditions = HealthCondition.where(repro_health: repro_health) if repro_health.present?
    health_conditions = HealthCondition.where(repro_health_ty: repro_health_ty) if repro_health_ty.present?
    health_conditions = HealthCondition.where(repro_health_current: repro_health_current) if repro_health_current.present?
    health_conditions = HealthCondition.where(repro_health_medication: repro_health_medication) if repro_health_medication.present?
    health_conditions = HealthCondition.where(neuro_disease: neuro_disease) if neuro_disease.present?
    health_conditions = HealthCondition.where(neuro_disease_ty: neuro_disease_ty) if neuro_disease_ty.present?
    health_conditions = HealthCondition.where(neuro_disease_current: neuro_disease_current) if neuro_disease_current.present?
    health_conditions = HealthCondition.where(neuro_disease_medication: neuro_disease_medication) if neuro_disease_medication.present?
    health_conditions = HealthCondition.where(hepatitis: hepatitis) if hepatitis.present?
    health_conditions = HealthCondition.where(hepatitis_ty: hepatitis_ty) if hepatitis_ty.present?
    health_conditions = HealthCondition.where(hepatitis_current: hepatitis_current) if hepatitis_current.present?
    health_conditions = HealthCondition.where(hepatitis_medication: hepatitis_medication) if hepatitis_medication.present?
    health_conditions = HealthCondition.where(psych: psych) if psych.present?
    health_conditions = HealthCondition.where(psych_ty: psych_ty) if psych_ty.present?
    health_conditions = HealthCondition.where(psych_current: psych_current) if psych_current.present?
    health_conditions = HealthCondition.where(psych_medication: psych_medication) if psych_medication.present?
    health_conditions = HealthCondition.where(shoulder: shoulder) if shoulder.present?
    health_conditions = HealthCondition.where(shoulder_ty: shoulder_ty) if shoulder_ty.present?
    health_conditions = HealthCondition.where(shoulder_current: shoulder_current) if shoulder_current.present?
    health_conditions = HealthCondition.where(shoulder_medication: shoulder_medication) if shoulder_medication.present?
    health_conditions = HealthCondition.where(knee: knee) if knee.present?
    health_conditions = HealthCondition.where(knee_ty: knee_ty) if knee_ty.present?
    health_conditions = HealthCondition.where(knee_current: knee_current) if knee_current.present?
    health_conditions = HealthCondition.where(knee_medication: knee_medication) if knee_medication.present?
    health_conditions = HealthCondition.where(back: back) if back.present?
    health_conditions = HealthCondition.where(back_ty: back_ty) if back_ty.present?
    health_conditions = HealthCondition.where(back_current: back_current) if back_current.present?
    health_conditions = HealthCondition.where(back_medication: back_medication) if back_medication.present?
    health_conditions = HealthCondition.where(arthritis: arthritis) if arthritis.present?
    health_conditions = HealthCondition.where(arthritis_ty: arthritis_ty) if arthritis_ty.present?
    health_conditions = HealthCondition.where(arthritis_current: arthritis_current) if arthritis_current.present?
    health_conditions = HealthCondition.where(arthritis_medication: arthritis_medication) if arthritis_medication.present?
    health_conditions = HealthCondition.where(other_text: other_text) if other_text.present?
    health_conditions = HealthCondition.where(other_ty: other_ty) if other_ty.present?
    health_conditions = HealthCondition.where(other_current: other_current) if other_current.present?
    health_conditions = HealthCondition.where(other_medication: other_medication) if other_medication.present?
    health_conditions
  end

  def find_hearing_tests
    hearing_tests = HearingTest.where(hearing_date: hearing_date) if hearing_date.present?
    hearing_tests = HearingTest.where(left_500: left_500) if left_500.present?
    hearing_tests = HearingTest.where(right_500: right_500) if right_500.present?
    hearing_tests = HearingTest.where(left_1000: left_1000) if left_1000.present?
    hearing_tests = HearingTest.where(right_1000: right_1000) if right_1000.present?
    hearing_tests = HearingTest.where(left_2000: left_2000) if left_2000.present?
    hearing_tests = HearingTest.where(right_2000: right_2000) if right_2000.present?
    hearing_tests = HearingTest.where(left_3000: left_3000) if left_3000.present?
    hearing_tests = HearingTest.where(right_3000: right_3000) if right_3000.present?
    hearing_tests = HearingTest.where(left_4000: left_4000) if left_4000.present?
    hearing_tests = HearingTest.where(right_4000: right_4000) if right_4000.present?
    hearing_tests = HearingTest.where(left_6000: left_6000) if left_6000.present?
    hearing_tests = HearingTest.where(right_6000: right_6000) if right_6000.present?
    hearing_tests = HearingTest.where(left_8000: left_8000) if left_8000.present?
    hearing_tests = HearingTest.where(right_8000: right_8000) if right_8000.present?
    hearing_tests
  end

  def find_immunizations
    immunizations = Immunization.where(immunization_date: immunization_date) if immunization_date.present?
    immunizations = Immunization.where(hepatitis_b: hepatitis_b) if hepatitis_b.present?
    immunizations = Immunization.where(hep_b_titer_1: hep_b_titer_1) if hep_b_titer_1.present?
    immunizations = Immunization.where(hep_b_titer_1_date: hep_b_titer_1_date) if hep_b_titer_1_date.present?
    immunizations = Immunization.where(hep_b_titer_2: hep_b_titer_2) if hep_b_titer_2.present?
    immunizations = Immunization.where(hep_b_titer_2_date: hep_b_titer_2_date) if hep_b_titer_2_date.present?
    immunizations = Immunization.where(hep_a: hep_a) if hep_a.present?
    immunizations = Immunization.where(influenza: influenza) if influenza.present?
    immunizations = Immunization.where(tb_test: tb_test) if tb_test.present?
    immunizations = Immunization.where(tb_test_date: tb_test_date) if tb_test_date.present?
    immunizations = Immunization.where(tb_quantiferon: tb_quantiferon) if tb_quantiferon.present?
    immunizations = Immunization.where(hep_c: hep_c) if hep_c.present?
    immunizations
  end

  def find_injury_illnesses
    injury_illnesses = InjuryIllness.where(non_work_sick_days: non_work_sick_days) if non_work_sick_days.present?
    injury_illnesses = InjuryIllness.where(injury_related_days: injury_related_days) if injury_related_days.present?
    injury_illnesses = InjuryIllness.where(alternative_duty: alternative_duty) if alternative_duty.present?
    injury_illnesses = InjuryIllness.where(lt_alternative_duty: lt_alternative_duty) if lt_alternative_duty.present?
    injury_illnesses
  end
end

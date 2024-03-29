# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Add 100 records
100.times do |n|
	report_id = Faker::Number.number(13)
	demographic_id = Faker::Number.number(11)
	report_date = Faker::Date.backward(3650)
	patient_id = Faker::Number.number(10)
	fname = Faker::Name.first_name
	lname = Faker::Name.last_name
	mname = Faker::Name.first_name
	date_of_birth = Faker::Date.backward(36500)
	date_of_hire = Faker::Date.backward(10000)
	date_of_exit = Faker::Date.backward(20000)
	binary1 = Faker::Number.between(0,1)
	binary2 = Faker::Number.between(0,1)
	bunary3 = Faker::Number.between(0,1)
	binary4 = Faker::Number.between(0,1)
	binary5 = Faker::Number.between(0,1)
	binary6 = Faker::Number.between(0,1)
	binary7 = Faker::Number.between(0,1)
	binary8 = Faker::Number.between(0,1)
	binary9 = Faker::Number.between(0,1)
	binary10 = Faker::Number.between(0,1)
	gender = Faker::Number.between(0,1)
	race = Faker::Number.between(0,4)
	marital_status = Faker::Number.between(0,6)
	education_level = Faker::Number.between(0,5)
	current_duties = Faker::Number.between(0,2)
	volunteer_hours = Faker::Number.between(0,160)
	fire_suppression_years = Faker::Number.between(0,25)
	ems_years = Faker::Number.between(0,25)
	mgmt_years = Faker::Number.between(0,25)
	construction_years = Faker::Number.between(0,25)
	other_ml_years = Faker::Number.between(0,25)
	retail_years = Faker::Number.between(0,25)
	lawn_years =  Faker::Number.between(0,25)
	admin_years = Faker::Number.between(0,25)
	manf_years = Faker::Number.between(0,25)
	healthcare_years = Faker::Number.between(0,25)
	other_years = Faker::Number.between(0,25)
	non_work_sick_days = Faker::Number.between(0,50)
	injury_related_days = Faker::Number.between(0,50)
	alternative_duty = Faker::Number.between(0,2)
	lt_alternative_duty = Faker::Number.between(0,1)
	chest = Faker::Number.between(0,2)
	back = Faker::Number.between(0,2)
	neck = Faker::Number.between(0,2)
	shoulder = Faker::Number.between(0,2)
	leg = Faker::Number.between(0,2)
	male_heart_disease = Faker::Number.between(0,1)
	female_heart_disease = Faker::Number.between(0,1)
	male_alcohol = Faker::Number.between(0,1)
	female_alcohol = Faker::Number.between(0,1)
	male_hypertension = Faker::Number.between(0,1)
	female_hypertension = Faker::Number.between(0,1)
	diabetes = Faker::Number.between(0,1)
	diabetes_ty = Faker::Number.between(0,1)
	diabetes_current = Faker::Number.between(0,1)
	diabetes_medication = Faker::Number.between(0,1)
	hypertension = Faker::Number.between(0,1)
	hypertension_ty = Faker::Number.between(0,1)
	hypertension_current = Faker::Number.between(0,1)
	hypertension_medication = Faker::Number.between(0,1)
	hyperlipidemia = Faker::Number.between(0,1)
	hyperlipidemia_ty = Faker::Number.between(0,1)
	hyperlipidemia_current = Faker::Number.between(0,1)
	hyperlipidemia_medication = Faker::Number.between(0,1)
	cancer = Faker::Number.between(0,27)
	cancer_ty = Faker::Number.between(0,1)
	cancer_current = Faker::Number.between(0,1)
	cancer_medication = Faker::Number.between(0,1)
	heart_disease = Faker::Number.between(0,1)
	heart_disease_ty = Faker::Number.between(0,1)
	heart_disease_current = Faker::Number.between(0,1)
	heart_disease_medication = Faker::Number.between(0,1)
	resp_disease = Faker::Number.between(0,1)
	resp_disease_ty = Faker::Number.between(0,1)
	resp_disease_current = Faker::Number.between(0,1)
	resp_disease_medication = Faker::Number.between(0,1)
	gastro_disease = Faker::Number.between(0,1)
	gastro_disease_ty = Faker::Number.between(0,1)
	gastro_disease_current = Faker::Number.between(0,1)
	gastro_disease_medication = Faker::Number.between(0,1)
	repro_health = Faker::Number.between(0,1)
	repro_health_ty = Faker::Number.between(0,1)
	repro_health_current = Faker::Number.between(0,1)
	repro_health_medication = Faker::Number.between(0,1)
	neuro_disease = Faker::Number.between(0,1)
	neuro_disease_ty = Faker::Number.between(0,1)
	neuro_disease_current = Faker::Number.between(0,1)
	neuro_disease_medication = Faker::Number.between(0,1)
	hepatitis = Faker::Number.between(0,1)
	hepatitis_ty = Faker::Number.between(0,1)
	hepatitis_current = Faker::Number.between(0,1)
	hepatitis_medication = Faker::Number.between(0,1)
	psych = Faker::Number.between(0,1)
	psych_ty = Faker::Number.between(0,1)
	psych_current = Faker::Number.between(0,1)
	psych_medication = Faker::Number.between(0,1)
	shoulder = Faker::Number.between(0,1)
	shoulder_ty = Faker::Number.between(0,1)
	shoulder_current = Faker::Number.between(0,1)
	shoulder_medication = Faker::Number.between(0,1)
	knee = Faker::Number.between(0,1)
	knee_ty = Faker::Number.between(0,1)
	knee_current = Faker::Number.between(0,1)
	knee_medication = Faker::Number.between(0,1)
	back = Faker::Number.between(0,1)
	back_ty = Faker::Number.between(0,1)
	back_current = Faker::Number.between(0,1)
	back_medication = Faker::Number.between(0,1)
	arthritis = Faker::Number.between(0,1)
	arthritis_ty = Faker::Number.between(0,1)
	arthritis_current = Faker::Number.between(0,1)
	arthritis_medication = Faker::Number.between(0,1)
	other_text = Faker::Lorem.words(2)
	other_ty = Faker::Number.between(0,1)
	other_current = Faker::Number.between(0,1)
	other_medication = Faker::Number.between(0,1)
	smoke = Faker::Number.between(0,1)
	start_smoke = Faker::Date.backward(15250)
	stop_smoke = Faker::Date.backward(14250)
	pack_count = Faker::Number.between(0,5)
	chew_tobacco = Faker::Number.between(0,1)
	smoke_cigar = Faker::Number.between(0,1)
	smoke_cessation = Faker::Number.between(0,1)
	cessation_success = Faker::Number.between(0,2)
	alcohol = Faker::Number.between(0,1)
	alcohol_count = Faker::Number.between(0,100)
	psa = Faker::Number.between(0,2)
	dre = Faker::Number.between(0,2)
	fob = Faker::Number.between(0,2)
	colonoscopy = Faker::Number.between(0,2)
	pap_smear = Faker::Number.between(0,2)
	breast_exam = Faker::Number.between(0,2)
	mammogram = Faker::Number.between(0,2)
	skin = Faker::Number.between(0,2)
	testicular = Faker::Number.between(0,2)
	exam_date = Faker::Date.backward(365)
	fit_test_date = Faker::Date.backward(365)
	aerobic_test_type = Faker::Number.between(0,8)
	aerobic_capacity = Faker::Number.between(50,100)
	flex_sit_reach = Faker::Number.between(0,36)
	hand_strength = Faker::Number.between(0,200)
	leg_strength = Faker::Number.between(0,200)
	arm_strength = Faker::Number.between(0,200)
	vertical_jump = Faker::Number.between(700,1500)
	endurance_push_ups = Faker::Number.between(0,150)
	plank = Faker::Number.between(0,300)
	hearing_date = Faker::Date.backward(730)
	left_500 = Faker::Date.backward(730)
	right_500 = Faker::Number.between(0,1)
	left_1000 = Faker::Number.between(0,1)
	right_1000 = Faker::Number.between(0,1)
	left_2000 = Faker::Number.between(0,1)
	right_2000 = Faker::Number.between(0,1)
	left_3000 = Faker::Number.between(0,1)
	right_3000 = Faker::Number.between(0,1)
	left_4000 = Faker::Number.between(0,1)
	right_4000 = Faker::Number.between(0,1)
	left_6000 = Faker::Number.between(0,1)
	right_6000 = Faker::Number.between(0,1)
	left_8000 = Faker::Number.between(0,1)
	right_8000 = Faker::Number.between(0,1)
	immunization_date = Faker::Date.backward(730)
	hepatitis_b = Faker::Number.between(0,3)
	hep_b_titer_1 = Faker::Number.between(0,100)
	hep_b_titer_1_date = Faker::Date.backward(1460)
	heb_b_titer_2 = Faker::Number.between(0,100)
	hep_b_titer_2_date = Faker::Date.backward(1460)
	hep_a = Faker::Number.between(0,1)
	influenza = Faker::Number.between(0,1)
	tb_test = Faker::Number.between(2010,2016)
	tb_test_date = Faker::Date.backward(1460)
	tb_quantiferon = Faker::Number.between(0,2)
	hep_c = Faker::Number.between(0,3)
	lab_date = Faker::Date.backward(365)
	wbc_count = Faker::Number.between(1000,20000)
	hemoglobin = Faker::Number.between(0,50)
	hematocrit = Faker::Number.between(0,100)
	sgot_ast = Faker::Number.between(0,100)
	sgpt_alt = Faker::Number.between(0,100)
	triglyceride = Faker::Number.between(0,600)
	cholesterol = Faker::Number.between(0,600)
	ldl = Faker::Number.between(0,300)
	hdl = Faker::Number.between(0,100)
	glucose = Faker::Number.between(0,300)
	bun = Faker::Number.between(0,3)
	creatinine = Faker::Number.decimal(1,1)
	urine_blood = Faker::Number.between(0,3)
	urine_glucose = Faker::Number.between(0,3)
	urine_protein = Faker::Number.between(0,3)
	thirty_min = Faker::Number.between(0,7)
	cardio = Faker::Number.between(0,7)
	muscle = Faker::Number.between(0,7)
	sweat = Faker::Number.between(0,7)
	everyday = Faker::Number.between(0,6)
	exam_date = Faker::Date.backward(730)
	systolic = Faker::Number.between(60, 160)
	diastolic = Faker::Number.between(30, 140)
	pulse = Faker::Number.between(30, 220)
	weight = Faker::Number.between(50, 400)
	height = Faker::Number.between(54,96)
	hip = Faker::Number.between(25, 60)
	waist = Faker::Number.between(23, 50)
	body_comp_method = Faker::Number.between(0,3)
	body_fat = Faker::Number.between(5, 40)
	fvc = Faker::Number.between(1,10)
	fev1 = Faker::Number.between(0,10)
	fev1_fvc = fev1/fvc

	#Create mds_reports
	MdsReport.create!(report_id: report_id, demographic_id: demographic_id, report_date: report_date)
	#Create patients
	Patient.create!(patient_id: patient_id, lname: lname, fname: fname, mname: mname, date_of_birth: date_of_birth)
	#Create demographics
	Demographic.create!(report_id: report_id, gender: gender, ethnicity: binary2, race: race, marital_status: marital_status, ed_level:education_level)
	#Create current_jobs
	CurrentJob.create!(report_id: report_id, currently_emp: binary6, date_of_hire: date_of_hire, date_of_exit: date_of_exit, current_duties: current_duties, volunteer: binary10, volunteer_hours: volunteer_hours, other_employment: binary7)
	#Create duties
	Duty.create!(report_id: report_id, fire_suppression_years: fire_suppression_years, ems_years:ems_years, mgmt_years: mgmt_years)
	#Create other_employments
	OtherEmployment.create!(report_id: report_id, construction_years: construction_years, other_ml_years: other_ml_years, retail_years: retail_years, lawn_years: lawn_years, admin_years: admin_years, manf_years: manf_years, healthcare_years: healthcare_years, other_years: other_years)
	#Create injury_illnesses
	InjuryIllness.create!(report_id: report_id, non_work_sick_days: non_work_sick_days, injury_related_days: injury_related_days, alternative_duty: alternative_duty, lt_alternative_duty: lt_alternative_duty )
	#Create surgeries
	Surgery.create!(report_id: report_id, chest: chest, back: back, neck: neck, shoulder: shoulder, leg: leg)
	#Create family_histories
	FamilyHistory.create!(report_id: report_id, male_heart_disease: male_heart_disease, female_heart_disease: female_heart_disease, male_alcohol:male_alcohol, female_alcohol: female_alcohol, male_hypertension: male_hypertension, female_hypertension:female_hypertension)
	#Create health_conditions
	HealthCondition.create!(report_id: report_id, diabetes: diabetes, diabetes_ty: diabetes_ty, diabetes_current: diabetes_current, diabetes_medication: diabetes_medication, hypertension: hypertension, hypertension_ty: hypertension_ty, hypertension_current: hypertension_current, hypertension_medication: hypertension_medication, hyperlipidemia: hyperlipidemia, hyperlipidemia_ty: hyperlipidemia_ty, hyperlipidemia_current: hyperlipidemia_current, hyperlipidemia_medication: hyperlipidemia_medication, cancer: cancer, cancer_ty: cancer_ty, cancer_current: cancer_current, cancer_medication: cancer_medication, heart_disease: heart_disease, heart_disease_ty: heart_disease_ty, heart_disease_current: heart_disease_current, heart_disease_medication: heart_disease_medication, resp_disease: resp_disease, resp_disease_ty: resp_disease_ty, resp_disease_current: resp_disease_current, resp_disease_medication: resp_disease_medication, gastro_disease: gastro_disease, gastro_disease_ty: gastro_disease_ty, gastro_disease_current: gastro_disease_current, gastro_disease_medication: gastro_disease_medication, repro_health: repro_health, repro_health_ty: repro_health_ty, repro_health_current: repro_health_current, repro_health_medication: repro_health_medication, neuro_disease: neuro_disease, neuro_disease_ty: neuro_disease_ty, neuro_disease_current: neuro_disease_current, neuro_disease_medication: neuro_disease_medication, hepatitis: hepatitis, hepatitis_ty: hepatitis_ty, hepatitis_current: hepatitis_current, hepatitis_medication: hepatitis_medication, psych: psych, psych_ty: psych_ty, psych_current: psych_current, psych_medication: psych_medication, shoulder: shoulder, shoulder_ty: shoulder_ty, shoulder_current: shoulder_current, shoulder_medication: shoulder_medication, knee: knee, knee_ty: knee_ty, knee_current: knee_current, knee_medication: knee_medication, back: back, back_ty: back_ty, back_current: back_current, back_medication: back_medication, arthritis: arthritis, arthritis_ty: arthritis_ty, arthritis_current: arthritis_current, arthritis_medication: arthritis_medication, other_text: other_text, other_ty: other_ty, other_current: other_current, other_medication: other_medication)
	#Create tobacco_and_alcohols
	TobaccoAndAlcohol.create!(report_id: report_id, smoke: smoke, start_smoke: start_smoke, stop_smoke:stop_smoke, pack_count: pack_count, chew_tobacco:chew_tobacco, smoke_cigar: smoke_cigar, smoke_cessation: smoke_cessation, alcohol: alcohol, alcohol_count: alcohol_count)
	#Create cancer_screenings
	CancerScreening.create!(report_id: report_id, psa: psa, dre: dre, fob: fob, colonoscopy: colonoscopy, pap_smear: pap_smear, breast_exam: breast_exam, mammogram: mammogram, skin: skin, testicular: testicular, exam_date: exam_date)
	#Create fitness_tests
	FitnessTest.create!(report_id: report_id, fit_test_date: fit_test_date, aerobic_test_type: aerobic_test_type, aerobic_capacity: aerobic_capacity, flex_sit_reach: flex_sit_reach, hand_strength: hand_strength, leg_strength: leg_strength, arm_strength: arm_strength, vertical_jump: vertical_jump, endurance_push_ups: endurance_push_ups, plank: plank)
	#Create hearing_tests
	HearingTest.create!(report_id: report_id, hearing_date: hearing_date, left_500: left_500, right_500: right_500, left_1000: left_1000, right_1000: right_1000, left_2000: left_2000, right_2000: right_2000, left_3000: left_3000, right_3000: right_3000, left_4000: left_4000, right_4000: right_4000, left_6000: left_6000, right_6000: right_6000, left_8000: left_8000, right_8000: right_8000)
	#Create immunizations
	Immunization.create!(report_id: report_id, immunization_date: immunization_date, hepatitis_b: hepatitis_b, hep_b_titer_1: hep_b_titer_1, hep_b_titer_1_date: hep_b_titer_1_date, heb_b_titer_2: heb_b_titer_2, hep_b_titer_2_date: hep_b_titer_2_date, hep_a: hep_a, influenza: influenza, tb_test: tb_test, tb_test_date: tb_test_date, tb_quantiferon: tb_quantiferon, hep_c:hep_c)
	#Create lab_data
	LabDatum.create!(patient_id: patient_id, lab_date: lab_date, wbc_count: wbc_count, hemoglobin: hemoglobin, hematocrit: hematocrit, sgot_ast:sgot_ast, sgpt_alt:sgpt_alt, triglyceride:triglyceride, cholesterol:cholesterol, ldl:ldl, hdl:hdl, glucose:glucose, bun:bun, creatinine:creatinine, urine_blood:urine_blood, urine_glucose:urine_glucose, urine_protein:urine_protein)
	#Create physical_activities
	PhysicalActivity.create!(report_id:report_id, thirty_min:thirty_min, cardio:cardio, muscle:muscle, sweat: sweat, everyday: everyday)
	#Create physical_exams
	PhysicalExam.create!(patient_id: patient_id, exam_date: exam_date, systolic:systolic, diastolic:diastolic, pulse:pulse, weight:weight, height:height, hip:hip, waist:waist, body_comp_method:body_comp_method, body_fat:body_fat, fvc:fvc, fev1:fev1, fev1_fvc:fev1_fvc)
end
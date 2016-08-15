# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Add 100 patients
100.times do |n|
	patient_id = Faker::Number.number(10)
	fname = Faker::Name.first_name
	lname = Faker::Name.last_name
	mname = Faker::Name.first_name
	date_of_birth = Faker::Date.backward(36500)
	binary1 = Faker::number.between(0,1)
	binary2 = Faker::number.between(0,1)
	Patient.create!(patient_id: patient_id, lname: lname, fname: fname, mname: mname, date_of_birth: date_of_birth)
end
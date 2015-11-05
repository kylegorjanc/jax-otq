# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


runners = Runner.create([
	{first_name: "Becki", 	last_name: "Spellman", 		age: 32, profession: "", website: "", has_coach: true, coach_name: "Glenn Andrews", twitter_handle: "@beckimichael9", has_spouse: true, has_children: false, num_of_children: 0, is_qualified: false, q_standard: "", marathon_pr: "2:44:44", first_marathon_time:"", avg_job_hrs: nil, bio: "'Rocket' on Salty Running", peak_mileage_wkly: 80 },
	{first_name: "Jessica", last_name: "Kuhr Odorcic", 	age: 34, profession: "", website: "", has_coach: true, coach_name: "Glenn Andrews", twitter_handle: "jessicaodorcic", has_children: false, num_of_children: 0, is_qualified: true, q_standard: "B", marathon_pr: "2:51:50", first_marathon_time:"", avg_job_hrs: nil, bio: "Check out an interview with Jessica on Salty Running", peak_mileage_wkly: 80}
	])









mentors =
	type: [Mentor]

schools = 
	type: [School]

School =
	id:
		type: String
	name:
		type: String

Mentor = 
	id:
		type: String
	firstname: 
		type: String
	lastname: 
		type: String
	gender:
		type: ["m", "f"]
	school: 
		type: String # school-fk
	kids:
		type: [String] #Array of Kid-Ids
	ects:
		type: Boolean
	timetable:
		type: Array
		0:	# monday
			type: [String] # hh:mm
		1: 	# tuesday
			type: [String]
		# usw.


Kid =
	id:
		type: String
	firstname:
		type: String
	lastname:
		type: String
	timetable:
		type: Array
		0:	# monday
			type: [String] # Array of hh:mm
		1: 	# tuesday
			type: [String]
		# usw.
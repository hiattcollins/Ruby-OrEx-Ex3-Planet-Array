planet_list = ["Mercury", "Mars"]
puts "**Planet List: #{planet_list}**"

#Append Jupiter and Saturn
planet_list << "Jupiter" << "Saturn"
puts "**Planet List: #{planet_list}**"

#Insert Earth and Venus
planet_list.insert(1, "Venus")
planet_list.insert(2,  "Earth")
puts "**Planet List: #{planet_list}**"

#Append Uranus, Neptune, and Pluto
planet_list << "Uranus" << "Neptune" << "Pluto"
puts "**Planet List: #{planet_list}**"

#Create rocky planets array
rocky_planets = planet_list.slice(0, 4)
puts "**Rocky Planets: #{rocky_planets}**"

#Remove Pluto from planet list
planet_list.pop
puts "**Planet List: #{planet_list}**"


probe_list = [
				["Mariner 10", "Mercury"], ["Messenger", "Mercury"], 
				["Mariner 2", "Venus"], ["Mariner 5", "Venus"],
				["Mariner 4", "Mars"], ["Mariner 6", "Mars"],
				["Pioneer 10", "Jupiter"], ["Voyager 1", "Jupter"],
				["Pioneer 11", "Saturn"], ["Cassini", "Saturn"],
				["Voyager 2", "Uranus"],
				["Voyager 2", "Neptune"]
			]

planet_list.each do |i|
	probe_report = "Planet: #{i}; Probes:"

	probe_list.each do |j|
		if j[1] == i
			probe_report += " #{j[0]},"
		end
	end

	if probe_report.end_with?(":")
		probe_report += " None"
	end

	if probe_report.end_with?(",")
		probe_report = probe_report.chop
	end
		
	puts probe_report
end


